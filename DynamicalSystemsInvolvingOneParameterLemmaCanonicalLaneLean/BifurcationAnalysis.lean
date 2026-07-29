import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.ShadowingLemma

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure BifurcationAnalysisPackage
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    (S : ShadowingLemmaPackage M) where
  bifurcationPoints : Type u
  genericParameters : Set (P.parameterSpace)
  structuralStability : Prop
  bifurcationScenarioClassified : Prop

structure BifurcationAnalysisEvidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    {S : ShadowingLemmaPackage M}
    (B : BifurcationAnalysisPackage S) where
  structuralStabilityClosed : B.structuralStability
  bifurcationScenarioClassifiedClosed : B.bifurcationScenarioClassified

def BifurcationAnalysisClosed
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    {S : ShadowingLemmaPackage M}
    (B : BifurcationAnalysisPackage S) : Prop :=
  B.structuralStability ∧ B.bifurcationScenarioClassified

theorem bifurcation_analysis_closed_from_evidence
    {P : OneParameterPerturbationPackage}
    {H : ParameterDependentHyperbolicityPackage P}
    {M : InvariantManifoldPersistencePackage H}
    {S : ShadowingLemmaPackage M}
    (B : BifurcationAnalysisPackage S) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact And.intro E.structuralStabilityClosed E.bifurcationScenarioClassifiedClosed

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse
