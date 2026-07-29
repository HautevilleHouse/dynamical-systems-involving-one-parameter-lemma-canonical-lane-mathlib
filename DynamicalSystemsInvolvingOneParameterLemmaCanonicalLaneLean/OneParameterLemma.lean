import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure ParameterFamily where
  parameterSpace : Type u
  familyElement : Type v
  continuity : Prop
  differentiability : Prop

structure OneParameterLemmaState where
  family : ParameterFamily
  criticalParameterValue : Prop
  boundedTrajectory : Prop

def oneParameterLemmaWitnessClosed (state : OneParameterLemmaState) : Prop :=
  state.criticalParameterValue ∧ state.boundedTrajectory

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse