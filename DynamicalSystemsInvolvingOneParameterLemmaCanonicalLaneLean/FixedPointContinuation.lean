import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure FixedPointContinuationPackage {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X} where
  initialFixedPoint : X
  continuationCondition : Prop
  continuationExists : Prop
  uniqueness : Prop

structure FixedPointContinuationEvidence {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (P : FixedPointContinuationPackage X F) where
  continuationConditionClosed : P.continuationCondition
  continuationExistsClosed : P.continuationExists
  uniquenessClosed : P.uniqueness

def FixedPointContinuationClosed {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (P : FixedPointContinuationPackage X F) : Prop :=
  P.continuationCondition ∧ P.continuationExists ∧ P.uniqueness

theorem fixed_point_continuation_closed_from_evidence {X : Type u} [TopologicalSpace X] {F : OneParameterFamily X}
  (P : FixedPointContinuationPackage X F) (E : FixedPointContinuationEvidence P) : FixedPointContinuationClosed P :=
  And.intro E.continuationConditionClosed (And.intro E.continuationExistsClosed E.uniquenessClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse