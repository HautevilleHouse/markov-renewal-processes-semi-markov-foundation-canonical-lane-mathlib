import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure SMKernelPackage where
  stateSpace : Type u
  kernelFamily : Type v
  semiMarkovProperty : Prop
  regularity : Prop

structure SMKernelEvidence (S : SMKernelPackage) where
  semiMarkovPropertyClosed : S.semiMarkovProperty
  regularityClosed : S.regularity

def SMKernelClosed (S : SMKernelPackage) : Prop :=
  S.semiMarkovProperty ∧ S.regularity

theorem sm_kernel_closed_from_evidence (S : SMKernelPackage) (E : SMKernelEvidence S) :
    SMKernelClosed S := by
  exact And.intro E.semiMarkovPropertyClosed E.regularityClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
