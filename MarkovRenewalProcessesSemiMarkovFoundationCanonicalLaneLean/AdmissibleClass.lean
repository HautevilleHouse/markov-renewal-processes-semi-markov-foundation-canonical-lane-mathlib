import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure MarkovRenewalAdmittedObject where
  stateSpace : Type
  sojournDistribution : (stateSpace × stateSpace) → Set (ProbabilityMeasure ℝ)
  renewalKernel : (stateSpace × stateSpace) → ℝ → ℝ
  markovRenewalEquation : Prop
  conclusion : markovRenewalEquation

def MarkovWitnessClosed (O : MarkovRenewalAdmittedObject) : Prop :=
  O.markovRenewalEquation

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse