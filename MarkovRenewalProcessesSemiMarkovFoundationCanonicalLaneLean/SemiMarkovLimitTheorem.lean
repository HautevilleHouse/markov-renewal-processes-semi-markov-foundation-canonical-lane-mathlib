import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SemiMarkovLimitPackage (K : KernelFamilyPackage)
    (R : RenewalEquationPackage K) where
  lawOfLargeNumbers : Prop
  centralLimitTheorem : Prop
  invariancePrinciple : Prop
  steadyStateDistribution : Prop

structure SemiMarkovLimitEvidence {K : KernelFamilyPackage}
    {R : RenewalEquationPackage K} (L : SemiMarkovLimitPackage K R) where
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers
  centralLimitTheoremClosed : L.centralLimitTheorem
  invariancePrincipleClosed : L.invariancePrinciple
  steadyStateDistributionClosed : L.steadyStateDistribution

def SemiMarkovLimitClosed (L : SemiMarkovLimitPackage K R) : Prop :=
  L.lawOfLargeNumbers ∧ L.centralLimitTheorem ∧
  L.invariancePrinciple ∧ L.steadyStateDistribution

theorem semi_markov_limit_closed_from_evidence
    {K : KernelFamilyPackage} {R : RenewalEquationPackage K}
    (L : SemiMarkovLimitPackage K R)
    (E : SemiMarkovLimitEvidence L) : SemiMarkovLimitClosed L :=
  And.intro E.lawOfLargeNumbersClosed
    (And.intro E.centralLimitTheoremClosed
      (And.intro E.invariancePrincipleClosed E.steadyStateDistributionClosed))

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
