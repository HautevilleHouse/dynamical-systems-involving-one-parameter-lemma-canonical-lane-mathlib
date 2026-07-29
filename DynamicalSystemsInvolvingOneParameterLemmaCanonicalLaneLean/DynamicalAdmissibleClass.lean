import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure DynamicalAdmittedObject where
  state : OneParameterLemmaState
  conclusion : oneParameterLemmaWitnessClosed state

structure DynamicalAdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def dynamcalAdmittedClosure (A : DynamicalAdmissibleClass) : Prop :=
  oneParameterLemmaWitnessClosed A.object.state ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse