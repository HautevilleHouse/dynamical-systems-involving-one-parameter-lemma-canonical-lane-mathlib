import DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.NormalForms

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure InvariantManifoldsPackage (P : OneParameterLemmaPackage) where
  stableManifold : Prop
  unstableManifold : Prop
  centerManifold : Prop
  parameterContinuation : Prop
  stableManifoldClosed : stableManifold
  unstableManifoldClosed : unstableManifold
  centerManifoldClosed : centerManifold
  parameterContinuationClosed : parameterContinuation

structure InvariantManifoldsEvidence (P : OneParameterLemmaPackage) (I : InvariantManifoldsPackage P) where
  stableManifoldClosed : I.stableManifold
  unstableManifoldClosed : I.unstableManifold
  centerManifoldClosed : I.centerManifold
  parameterContinuationClosed : I.parameterContinuation

def InvariantManifoldsClosed (P : OneParameterLemmaPackage) (I : InvariantManifoldsPackage P) : Prop :=
  I.stableManifold ∧ I.unstableManifold ∧ I.centerManifold ∧ I.parameterContinuation

theorem invariant_manifolds_closed_from_evidence (P : OneParameterLemmaPackage) (I : InvariantManifoldsPackage P)
    (E : InvariantManifoldsEvidence P I) : InvariantManifoldsClosed P I := by
  exact And.intro E.stableManifoldClosed
    (And.intro E.unstableManifoldClosed
      (And.intro E.centerManifoldClosed E.parameterContinuationClosed))

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse