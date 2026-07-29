import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.InvariantManifoldPersistence

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure ShadowingLemmaPackage
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    (M : InvariantManifoldPersistencePackage H) where
  shadowingDistance : Type u
  shadowingProperty : Prop
  parameterResilience : Prop

structure ShadowingLemmaEvidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    (S : ShadowingLemmaPackage M) where
  shadowingPropertyClosed : S.shadowingProperty
  parameterResilienceClosed : S.parameterResilience

def ShadowingLemmaClosed
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    (S : ShadowingLemmaPackage M) : Prop :=
  S.shadowingProperty ∧ S.parameterResilience

theorem shadowing_lemma_closed_from_evidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    (S : ShadowingLemmaPackage M) (E : ShadowingLemmaEvidence S) :
    ShadowingLemmaClosed S := by
  exact And.intro E.shadowingPropertyClosed E.parameterResilienceClosed

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse
