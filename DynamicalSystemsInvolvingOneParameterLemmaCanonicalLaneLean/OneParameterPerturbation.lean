import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure OneParameterPerturbationPackage where
  parameterSpace : Type u
  baseDynamics : Type v
  perturbedDynamics : Type w
  continuityInParameter : Prop
  differentiabilityInParameter : Prop
  perturbationSizeControl : Prop

structure OneParameterPerturbationEvidence (P : OneParameterPerturbationPackage) where
  continuityInParameterClosed : P.continuityInParameter
  differentiabilityInParameterClosed : P.differentiabilityInParameter
  perturbationSizeControlClosed : P.perturbationSizeControl

def OneParameterPerturbationClosed (P : OneParameterPerturbationPackage) : Prop :=
  P.continuityInParameter ∧ P.differentiabilityInParameter ∧ P.perturbationSizeControl

theorem one_parameter_perturbation_closed_from_evidence
    (P : OneParameterPerturbationPackage) (E : OneParameterPerturbationEvidence P) :
    OneParameterPerturbationClosed P := by
  exact And.intro E.continuityInParameterClosed
    (And.intro E.differentiabilityInParameterClosed E.perturbationSizeControlClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse
