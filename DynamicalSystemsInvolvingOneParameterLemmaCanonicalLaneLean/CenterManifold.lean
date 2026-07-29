import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure CenterManifoldPackage (F : OneParameterFamily X) where
  point : X
  centerSpace : Submodule ℝ (TangentSpace X)
  localInvariance : Prop
  reductionPrinciple : Prop
  stability : Prop

def CenterManifoldClosed (C : CenterManifoldPackage F) : Prop :=
  C.localInvariance ∧ C.reductionPrinciple ∧ C.stability

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage F) (hl : C.localInvariance) (hr : C.reductionPrinciple) (hs : C.stability) : CenterManifoldClosed C := by
  exact And.intro hl (And.intro hr hs)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse