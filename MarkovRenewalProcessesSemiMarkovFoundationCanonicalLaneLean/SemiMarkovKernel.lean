import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SemiMarkovKernelPackage where
  stateSpace : Type u
  timeDomain : Type v
  kernel : timeDomain -> stateSpace -> stateSpace -> Prop
  consistencyCondition : Prop
  markovPropertyAtJumps : Prop

structure SemiMarkovKernelEvidence (K : SemiMarkovKernelPackage) where
  consistencyConditionClosed : K.consistencyCondition
  markovPropertyAtJumpsClosed : K.markovPropertyAtJumps

def SemiMarkovKernelClosed (K : SemiMarkovKernelPackage) : Prop :=
  K.consistencyCondition ∧ K.markovPropertyAtJumps

theorem semi_markov_kernel_closed_from_evidence
    (K : SemiMarkovKernelPackage) (E : SemiMarkovKernelEvidence K) :
    SemiMarkovKernelClosed K := by
  exact And.intro E.consistencyConditionClosed E.markovPropertyAtJumpsClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
