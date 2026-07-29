import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.RenewalEquation

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure LimitTheoremPackage where
  renewalEquation : RenewalEquationPackage
  stationaryDistribution : Type u
  ergodicTheorem : Prop
  lawOfLargeNumbers : Prop

structure LimitTheoremEvidence (L : LimitTheoremPackage) where
  ergodicTheoremClosed : L.ergodicTheorem
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers

def LimitTheoremClosed (L : LimitTheoremPackage) : Prop :=
  L.ergodicTheorem ∧ L.lawOfLargeNumbers

theorem limit_theorem_closed_from_evidence
    (L : LimitTheoremPackage) (E : LimitTheoremEvidence L) :
    LimitTheoremClosed L := by
  exact And.intro E.ergodicTheoremClosed E.lawOfLargeNumbersClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
