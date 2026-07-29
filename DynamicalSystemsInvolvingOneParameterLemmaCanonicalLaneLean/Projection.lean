import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure ParameterLemmaEndgameState where
  object : ParameterLemmaAdmissibleObject

def parameterLemmaProjection : Projection ParameterLemmaEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem parameter_lemma_projection_idempotent (x : ParameterLemmaEndgameState) :
    parameterLemmaProjection.toFun (parameterLemmaProjection.toFun x) = parameterLemmaProjection.toFun x := by
  exact parameterLemmaProjection.idempotent x

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse