import DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean.CenterManifoldTheory

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure NormalFormsPackage (P : OneParameterLemmaPackage) where
  normalFormExists : Prop
  homologicalEquation : Prop
  resonanceConditions : Prop
  parameterDependentNormalForm : Prop
  normalFormExistsClosed : normalFormExists
  homologicalEquationClosed : homologicalEquation
  resonanceConditionsClosed : resonanceConditions
  parameterDependentNormalFormClosed : parameterDependentNormalForm

structure NormalFormsEvidence (P : OneParameterLemmaPackage) (N : NormalFormsPackage P) where
  normalFormExistsClosed : N.normalFormExists
  homologicalEquationClosed : N.homologicalEquation
  resonanceConditionsClosed : N.resonanceConditions
  parameterDependentNormalFormClosed : N.parameterDependentNormalForm

def NormalFormsClosed (P : OneParameterLemmaPackage) (N : NormalFormsPackage P) : Prop :=
  N.normalFormExists ∧ N.homologicalEquation ∧ N.resonanceConditions ∧ N.parameterDependentNormalForm

theorem normal_forms_closed_from_evidence (P : OneParameterLemmaPackage) (N : NormalFormsPackage P)
    (E : NormalFormsEvidence P N) : NormalFormsClosed P N := by
  exact And.intro E.normalFormExistsClosed
    (And.intro E.homologicalEquationClosed
      (And.intro E.resonanceConditionsClosed E.parameterDependentNormalFormClosed))

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse