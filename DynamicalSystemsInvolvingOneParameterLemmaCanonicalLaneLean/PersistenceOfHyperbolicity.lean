import DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.OneParameterLemma

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure PersistenceOfHyperbolicityPackage {P : OneParameterLemmaPackage} (Q : P.persistenceOfHyperbolicity) where
  hyperbolicSet : Type u
  spectralGap : Prop
  stableUnstableSplitting : Prop
  persistenceUnderPerturbation : Prop
  hyperbolicSetClosed : hyperbolicSet
  spectralGapClosed : spectralGap
  stableUnstableSplittingClosed : stableUnstableSplitting
  persistenceUnderPerturbationClosed : persistenceUnderPerturbation

structure PersistenceOfHyperbolicityEvidence {P : OneParameterLemmaPackage} {Q : P.persistenceOfHyperbolicity} (R : PersistenceOfHyperbolicityPackage Q) where
  spectralGapClosed : R.spectralGap
  stableUnstableSplittingClosed : R.stableUnstableSplitting
  persistenceUnderPerturbationClosed : R.persistenceUnderPerturbation

def PersistenceOfHyperbolicityClosed {P : OneParameterLemmaPackage} {Q : P.persistenceOfHyperbolicity} (R : PersistenceOfHyperbolicityPackage Q) : Prop :=
  R.spectralGap ∧ R.stableUnstableSplitting ∧ R.persistenceUnderPerturbation

theorem persistence_of_hyperbolicity_closed_from_evidence
    {P : OneParameterLemmaPackage} {Q : P.persistenceOfHyperbolicity} (R : PersistenceOfHyperbolicityPackage Q)
    (E : PersistenceOfHyperbolicityEvidence R) : PersistenceOfHyperbolicityClosed R := by
  exact And.intro E.spectralGapClosed (And.intro E.stableUnstableSplittingClosed E.persistenceUnderPerturbationClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse