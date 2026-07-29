import MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure MarkovRenewalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarkovRenewalAdmittedObject where
  space : MarkovRenewalSpace
  semiMarkovKernelDefined : Prop
  transitionProbabilitiesConsistent : Prop
  conclusion : transitionProbabilitiesConsistent

def MarkovRenewalWitnessClosed (O : MarkovRenewalAdmittedObject) : Prop :=
  O.transitionProbabilitiesConsistent

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse