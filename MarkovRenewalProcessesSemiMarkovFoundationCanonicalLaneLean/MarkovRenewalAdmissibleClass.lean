import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SemiMarkovAdmittedObject where
  stateSpace : Type
  kernelFamily : Type
  holdingTimeDistribution : Type
  transitionMechanism : Prop
  conclusion : transitionMechanism

structure AdmissibleClass where
  object : SemiMarkovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SemiMarkovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
