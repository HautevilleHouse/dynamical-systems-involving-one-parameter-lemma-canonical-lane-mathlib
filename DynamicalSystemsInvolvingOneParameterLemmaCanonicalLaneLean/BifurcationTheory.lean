import DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.PersistenceOfHyperbolicity

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure BifurcationTheoryPackage (P : OneParameterLemmaPackage) where
  bifurcationPointSet : Prop
  genericProperties : Prop
  structurallyStableSystems : Prop
  bifurcationDiagram : Prop
  bifurcationPointSetClosed : bifurcationPointSet
  genericPropertiesClosed : genericProperties
  structurallyStableSystemsClosed : structurallyStableSystems
  bifurcationDiagramClosed : bifurcationDiagram

structure BifurcationTheoryEvidence (P : OneParameterLemmaPackage) (B : BifurcationTheoryPackage P) where
  bifurcationPointSetClosed : B.bifurcationPointSet
  genericPropertiesClosed : B.genericProperties
  structurallyStableSystemsClosed : B.structurallyStableSystems
  bifurcationDiagramClosed : B.bifurcationDiagram

def BifurcationTheoryClosed (P : OneParameterLemmaPackage) (B : BifurcationTheoryPackage P) : Prop :=
  B.bifurcationPointSet ∧ B.genericProperties ∧ B.structurallyStableSystems ∧ B.bifurcationDiagram

theorem bifurcation_theory_closed_from_evidence (P : OneParameterLemmaPackage) (B : BifurcationTheoryPackage P)
    (E : BifurcationTheoryEvidence P B) : BifurcationTheoryClosed P B := by
  exact And.intro E.bifurcationPointSetClosed
    (And.intro E.genericPropertiesClosed
      (And.intro E.structurallyStableSystemsClosed E.bifurcationDiagramClosed))

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse