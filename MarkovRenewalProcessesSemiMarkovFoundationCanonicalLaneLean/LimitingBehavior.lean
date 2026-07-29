import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure LimitingBehaviorPackage {S : Type u} (K : SemiMarkovKernelPackage S)
    (R : RenewalEquationPackage K) (Soj : SojournTimeDistributionPackage) where
  stationaryDistribution : S -> ℝ
  ergodicTheorem : Prop
  lawOfLargeNumbers : Prop
  ergodicTheoremTerm : ergodicTheorem
  lawOfLargeNumbersTerm : lawOfLargeNumbers

structure LimitingBehaviorEvidence {S : Type u} {K : SemiMarkovKernelPackage S}
    {R : RenewalEquationPackage K} {Soj : SojournTimeDistributionPackage}
    (L : LimitingBehaviorPackage K R Soj) where
  ergodicTheoremClosed : L.ergodicTheorem
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers

def LimitingBehaviorClosed {S : Type u} {K : SemiMarkovKernelPackage S}
    {R : RenewalEquationPackage K} {Soj : SojournTimeDistributionPackage}
    (L : LimitingBehaviorPackage K R Soj) : Prop :=
  L.ergodicTheorem ∧ L.lawOfLargeNumbers

theorem limiting_behavior_closed_from_evidence {S : Type u} {K : SemiMarkovKernelPackage S}
    {R : RenewalEquationPackage K} {Soj : SojournTimeDistributionPackage}
    (L : LimitingBehaviorPackage K R Soj) (E : LimitingBehaviorEvidence L) :
    LimitingBehaviorClosed L := by
  exact And.intro E.ergodicTheoremClosed E.lawOfLargeNumbersClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse