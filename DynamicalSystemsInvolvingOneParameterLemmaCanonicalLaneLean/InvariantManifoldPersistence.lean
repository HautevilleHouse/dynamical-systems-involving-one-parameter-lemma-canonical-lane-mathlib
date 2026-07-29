import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.ParameterDependentHyperbolicity

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure InvariantManifoldPersistencePackage
    {P : OneParameterPerturbationPackage}
    (H : ParameterDependentHyperbolicityPackage P) where
  baseManifold : Type u
  parameterRange : Set (P.parameterSpace)
  persistenceTheorem : Prop
  smoothnessPreserved : Prop

structure InvariantManifoldPersistenceEvidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    (M : InvariantManifoldPersistencePackage H) where
  persistenceTheoremClosed : M.persistenceTheorem
  smoothnessPreservedClosed : M.smoothnessPreserved

def InvariantManifoldPersistenceClosed
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    (M : InvariantManifoldPersistencePackage H) : Prop :=
  M.persistenceTheorem ∧ M.smoothnessPreserved

theorem invariant_manifold_persistence_closed_from_evidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    (M : InvariantManifoldPersistencePackage H)
    (E : InvariantManifoldPersistenceEvidence M) :
    InvariantManifoldPersistenceClosed M := by
  exact And.intro E.persistenceTheoremClosed E.smoothnessPreservedClosed

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse
