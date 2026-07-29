import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure PhaseSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

def TangentSpace (M : PhaseSpace) : Type u := M.carrier → M.carrier

structure Flow (M : PhaseSpace) where
  parameter : ℝ
  map : ℝ × M.carrier → M.carrier
  groupProperty : ∀ t s : ℝ, ∀ x : M.carrier, map (t + s, x) = map (t, map (s, x))
  identityProperty : ∀ x : M.carrier, map (0, x) = x
  continuityProperty : Continuous (Function.uncurry map)

structure OneParameterFlow (M : PhaseSpace) (F : Flow M) where
  lemmaStatement : Prop
  invarianceCondition : Prop
  stabilityCondition : Prop

structure OneParameterFlowPackage (M : PhaseSpace) (F : Flow M) where
  flow : OneParameterFlow M F
  parameterLemmaClosed : flow.lemmaStatement
  invarianceClosed : flow.invarianceCondition
  stabilityClosed : flow.stabilityCondition

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse