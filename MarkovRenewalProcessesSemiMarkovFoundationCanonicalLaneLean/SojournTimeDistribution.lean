import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SojournTimeDistributionPackage where
  sojournTimeFunction : ℕ -> ℝ -> ℝ
  absolutelyContinuous : Prop
  hazardRate : ℝ -> ℝ
  absolutelyContinuousTerm : absolutelyContinuous
  hazardRateTerm : hazardRate

structure SojournTimeDistributionEvidence (S : SojournTimeDistributionPackage) where
  absolutelyContinuousClosed : S.absolutelyContinuous
  hazardRateClosed : S.hazardRate

def SojournTimeDistributionClosed (S : SojournTimeDistributionPackage) : Prop :=
  S.absolutelyContinuous ∧ S.hazardRate

theorem sojourn_time_distribution_closed_from_evidence
    (S : SojournTimeDistributionPackage) (E : SojournTimeDistributionEvidence S) :
    SojournTimeDistributionClosed S := by
  exact And.intro E.absolutelyContinuousClosed E.hazardRateClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse