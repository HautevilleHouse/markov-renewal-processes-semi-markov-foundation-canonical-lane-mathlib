import HautevilleHouse.MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.LimitTheorem

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SemiMarkovFoundationPackage where
  kernel : SemiMarkovKernelPackage
  renewalEquation : RenewalEquationPackage
  limitTheorem : LimitTheoremPackage

structure SemiMarkovFoundationEvidence (F : SemiMarkovFoundationPackage) where
  kernelEvidence : SemiMarkovKernelEvidence F.kernel
  renewalEquationEvidence : RenewalEquationEvidence F.renewalEquation
  limitTheoremEvidence : LimitTheoremEvidence F.limitTheorem

def SemiMarkovFoundationClosed (F : SemiMarkovFoundationPackage) : Prop :=
  SemiMarkovKernelClosed F.kernel ∧ RenewalEquationClosed F.renewalEquation ∧ LimitTheoremClosed F.limitTheorem

theorem semi_markov_foundation_closed_from_evidence (F : SemiMarkovFoundationPackage)
    (E : SemiMarkovFoundationEvidence F) : SemiMarkovFoundationClosed F := by
  exact And.intro (semi_markov_kernel_closed_from_evidence F.kernel E.kernelEvidence)
    (And.intro (renewal_equation_closed_from_evidence F.renewalEquation E.renewalEquationEvidence)
      (limit_theorem_closed_from_evidence F.limitTheorem E.limitTheoremEvidence))

end HautevilleHouse.MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse