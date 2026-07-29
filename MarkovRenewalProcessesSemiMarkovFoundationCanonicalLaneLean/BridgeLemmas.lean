import canonicalLaneMathlib.AdmissibleClass
import MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MarkovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse