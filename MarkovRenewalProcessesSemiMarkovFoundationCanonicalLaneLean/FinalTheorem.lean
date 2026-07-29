import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.LimitTheorem

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

def ConstrainedSemiMarkovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_semi_markov_endgame (A : AdmissibleClass) :
    ConstrainedSemiMarkovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
