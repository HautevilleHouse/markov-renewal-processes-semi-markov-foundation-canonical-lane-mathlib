import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure KernelFamilyPackage where
  transitionKernel : Type u
  holdingTimeKernel : Type v
  kernelFactorization : Prop
  markovRenewalEquation : Prop
  semiMarkovProperty : Prop

structure KernelFamilyEvidence (K : KernelFamilyPackage) where
  kernelFactorizationClosed : K.kernelFactorization
  markovRenewalEquationClosed : K.markovRenewalEquation
  semiMarkovPropertyClosed : K.semiMarkovProperty

def KernelFamilyClosed (K : KernelFamilyPackage) : Prop :=
  K.kernelFactorization ∧ K.markovRenewalEquation ∧ K.semiMarkovProperty

theorem kernel_family_closed_from_evidence (K : KernelFamilyPackage)
    (E : KernelFamilyEvidence K) : KernelFamilyClosed K :=
  And.intro E.kernelFactorizationClosed
    (And.intro E.markovRenewalEquationClosed E.semiMarkovPropertyClosed)

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
