import DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.BifurcationTheory

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure CenterManifoldTheoryPackage (P : OneParameterLemmaPackage) where
  centerManifoldExists : Prop
  reductionLemma : Prop
  dynamicsOnCenter : Prop
  parameterDependence : Prop
  centerManifoldExistsClosed : centerManifoldExists
  reductionLemmaClosed : reductionLemma
  dynamicsOnCenterClosed : dynamicsOnCenter
  parameterDependenceClosed : parameterDependence

structure CenterManifoldTheoryEvidence (P : OneParameterLemmaPackage) (C : CenterManifoldTheoryPackage P) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionLemmaClosed : C.reductionLemma
  dynamicsOnCenterClosed : C.dynamicsOnCenter
  parameterDependenceClosed : C.parameterDependence

def CenterManifoldTheoryClosed (P : OneParameterLemmaPackage) (C : CenterManifoldTheoryPackage P) : Prop :=
  C.centerManifoldExists ∧ C.reductionLemma ∧ C.dynamicsOnCenter ∧ C.parameterDependence

theorem center_manifold_theory_closed_from_evidence (P : OneParameterLemmaPackage) (C : CenterManifoldTheoryPackage P)
    (E : CenterManifoldTheoryEvidence P C) : CenterManifoldTheoryClosed P C := by
  exact And.intro E.centerManifoldExistsClosed
    (And.intro E.reductionLemmaClosed
      (And.intro E.dynamicsOnCenterClosed E.parameterDependenceClosed))

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse