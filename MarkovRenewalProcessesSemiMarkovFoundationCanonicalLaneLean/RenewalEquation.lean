import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.SemiMarkovKernel

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure RenewalEquationPackage where
  kernel : SemiMarkovKernelPackage
  occupationMeasure : Type u
  renewalEquation : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop

structure RenewalEquationEvidence (R : RenewalEquationPackage) where
  renewalEquationClosed : R.renewalEquation
  solutionExistenceClosed : R.solutionExistence
  solutionUniquenessClosed : R.solutionUniqueness

def RenewalEquationClosed (R : RenewalEquationPackage) : Prop :=
  R.renewalEquation ∧ R.solutionExistence ∧ R.solutionUniqueness

theorem renewal_equation_closed_from_evidence
    (R : RenewalEquationPackage) (E : RenewalEquationEvidence R) :
    RenewalEquationClosed R := by
  exact And.intro E.renewalEquationClosed
    (And.intro E.solutionExistenceClosed E.solutionUniquenessClosed)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
