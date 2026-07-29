import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.OneParameterPerturbation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure ParameterDependentHyperbolicityPackage
    (P : OneParameterPerturbationPackage) where
  uniformHyperbolicity : Prop
  spectralGapLowerBound : Prop
  continuousDependenceOfInvariantSplitting : Prop

structure ParameterDependentHyperbolicityEvidence
    {P : OneParameterPerturbationPackage}
    (H : ParameterDependentHyperbolicityPackage P) where
  uniformHyperbolicityClosed : H.uniformHyperbolicity
  spectralGapLowerBoundClosed : H.spectralGapLowerBound
  continuousDependenceOfInvariantSplittingClosed : H.continuousDependenceOfInvariantSplitting

def ParameterDependentHyperbolicityClosed
    {P : OneParameterPerturbationPackage}
    (H : ParameterDependentHyperbolicityPackage P) : Prop :=
  H.uniformHyperbolicity ∧ H.spectralGapLowerBound ∧ H.continuousDependenceOfInvariantSplitting

theorem parameter_dependent_hyperbolicity_closed_from_evidence
    {P : OneParameterPerturbationPackage}
    (H : ParameterDependentHyperbolicityPackage P)
    (E : ParameterDependentHyperbolicityEvidence H) :
    ParameterDependentHyperbolicityClosed H := by
  exact And.intro E.uniformHyperbolicityClosed
    (And.intro E.spectralGapLowerBoundClosed E.continuousDependenceOfInvariantSplittingClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse
