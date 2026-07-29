import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean

structure MarkovRenewalAdmittedObject where
  kernel : SMKernelPackage
  renewal : RenewalEquationPackage
  kernelClosed : SMKernelClosed kernel
  renewalClosed : RenewalEquationClosed renewal
  conclusion : kernelClosed ∧ renewalClosed

end MarkovRenewalProcessesSemiMarkovFoundationCanonicalLaneLean
end HautevilleHouse
