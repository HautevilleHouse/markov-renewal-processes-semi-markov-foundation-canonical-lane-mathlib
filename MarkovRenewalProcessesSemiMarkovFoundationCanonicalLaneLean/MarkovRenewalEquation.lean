import canonicalLaneMathlib.AdmissibleClass
import MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.SemiMarkovKernel

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure MarkovRenewalEquationPackage (K : SemiMarkovKernelPackage) where
  renewalFunction : (stateSpace × stateSpace) → ℝ → ℝ
  integralForm : Prop
  convolutionStructure : Prop
  solutionExistence : Prop

structure MarkovRenewalEquationEvidence {K : SemiMarkovKernelPackage}
    (M : MarkovRenewalEquationPackage K) where
  integralFormClosed : M.integralForm
  convolutionStructureClosed : M.convolutionStructure
  solutionExistenceClosed : M.solutionExistence

def MarkovRenewalEquationClosed {K : SemiMarkovKernelPackage}
    (M : MarkovRenewalEquationPackage K) : Prop :=
  M.integralForm ∧ M.convolutionStructure ∧ M.solutionExistence

theorem markov_renewal_equation_closed_from_evidence
    {K : SemiMarkovKernelPackage} (M : MarkovRenewalEquationPackage K)
    (E : MarkovRenewalEquationEvidence M) : MarkovRenewalEquationClosed M := by
  exact And.intro E.integralFormClosed (And.intro E.convolutionStructureClosed E.solutionExistenceClosed)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse