import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure RenewalEquationPackage (K : KernelFamilyPackage) where
  renewalEquation : Prop
  laplaceTransformForm : Prop
  convolutionStructure : Prop
  uniqueSolution : Prop

structure RenewalEquationEvidence {K : KernelFamilyPackage}
    (R : RenewalEquationPackage K) where
  renewalEquationClosed : R.renewalEquation
  laplaceTransformFormClosed : R.laplaceTransformForm
  convolutionStructureClosed : R.convolutionStructure
  uniqueSolutionClosed : R.uniqueSolution

def RenewalEquationClosed (R : RenewalEquationPackage K) : Prop :=
  R.renewalEquation ∧ R.laplaceTransformForm ∧
  R.convolutionStructure ∧ R.uniqueSolution

theorem renewal_equation_closed_from_evidence
    {K : KernelFamilyPackage} (R : RenewalEquationPackage K)
    (E : RenewalEquationEvidence R) : RenewalEquationClosed R :=
  And.intro E.renewalEquationClosed
    (And.intro E.laplaceTransformFormClosed
      (And.intro E.convolutionStructureClosed E.uniqueSolutionClosed))

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
