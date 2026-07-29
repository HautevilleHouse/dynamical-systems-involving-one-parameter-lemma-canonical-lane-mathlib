import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure LocalBifurcationPackage {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X} where
  bifurcationPoint : X
  bifurcationParameter : F.parameterSpace
  neighborhood : Set X
  eigenvalueCrossingCondition : Prop
  topologicalChange : Prop

structure LocalBifurcationEvidence {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (B : LocalBifurcationPackage X F) where
  eigenvalueCrossingConditionClosed : B.eigenvalueCrossingCondition
  topologicalChangeClosed : B.topologicalChange

def LocalBifurcationClosed {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (B : LocalBifurcationPackage X F) : Prop :=
  B.eigenvalueCrossingCondition ∧ B.topologicalChange

theorem local_bifurcation_closed_from_evidence {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (B : LocalBifurcationPackage X F) (E : LocalBifurcationEvidence B) : LocalBifurcationClosed B :=
  And.intro E.eigenvalueCrossingConditionClosed E.topologicalChangeClosed

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse