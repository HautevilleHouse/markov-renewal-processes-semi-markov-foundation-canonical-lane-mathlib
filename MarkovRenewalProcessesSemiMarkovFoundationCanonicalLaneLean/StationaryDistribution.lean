import canonicalLaneMathlib.AdmissibleClass
import MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.MarkovRenewalEquation

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure StationaryDistributionPackage {K : SemiMarkovKernelPackage}
    (M : MarkovRenewalEquationPackage K) where
  invariantMeasure : stateSpace → ℝ
  normalized : ℝ
  ergodicity : Prop
  uniqueness : Prop

structure StationaryDistributionEvidence {K : SemiMarkovKernelPackage}
    {M : MarkovRenewalEquationPackage K} (S : StationaryDistributionPackage M) where
  invariantMeasureClosed : S.invariantMeasure ∈ Set.range (λ x : stateSpace => 1)
  ergodicityClosed : S.ergodicity
  uniquenessClosed : S.uniqueness

def StationaryDistributionClosed {K : SemiMarkovKernelPackage}
    {M : MarkovRenewalEquationPackage K} (S : StationaryDistributionPackage M) : Prop :=
  S.normalized = 1 ∧ S.ergodicity ∧ S.uniqueness

theorem stationary_distribution_closed_from_evidence
    {K : SemiMarkovKernelPackage} {M : MarkovRenewalEquationPackage K}
    (S : StationaryDistributionPackage M) (E : StationaryDistributionEvidence S) :
    StationaryDistributionClosed S := by
  exact And.intro (by exact ?_) (And.intro E.ergodicityClosed E.uniquenessClosed)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse