import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure CenterManifoldPackage {X : Type u} [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
  where
  centerSubspace : Submodule ℝ X
  spectralGapCondition : Prop
  invarianceUnderFlow : Prop
  reductionToCenter : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage X) where
  spectralGapConditionClosed : C.spectralGapCondition
  invarianceUnderFlowClosed : C.invarianceUnderFlow
  reductionToCenterClosed : C.reductionToCenter

def CenterManifoldClosed (C : CenterManifoldPackage X) : Prop :=
  C.spectralGapCondition ∧ C.invarianceUnderFlow ∧ C.reductionToCenter

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage X) (E : CenterManifoldEvidence C) :
  CenterManifoldClosed C :=
  And.intro E.spectralGapConditionClosed (And.intro E.invarianceUnderFlowClosed E.reductionToCenterClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse