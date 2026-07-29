import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure OneParameterFamily (X : Type u) [TopologicalSpace X] where
  parameterSpace : Type v
  [TopologicalSpace parameterSpace]
  family : parameterSpace → X → X
  smoothFamily : Prop
  flowProperty : Prop
  continuity : Prop

def FamilyClosed (F : OneParameterFamily X) : Prop :=
  F.smoothFamily ∧ F.flowProperty ∧ F.continuity

theorem family_closed_from_evidence (F : OneParameterFamily X) (hs : F.smoothFamily) (hf : F.flowProperty) (hc : F.continuity) : FamilyClosed F := by
  exact And.intro hs (And.intro hf hc)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse