import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure ParameterLemmaAdmissibleObject where
  parameter : Type u
  oneParameterLemmaStatement : Prop
  stabilityCondition : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : ParameterLemmaAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ParameterLemmaWitnessClosed (O : ParameterLemmaAdmissibleObject) : Prop :=
  O.conclusion

def admittedClosure (A : AdmissibleClass) : Prop :=
  ParameterLemmaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse