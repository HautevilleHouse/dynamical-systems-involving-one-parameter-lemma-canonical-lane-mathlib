import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure LyapunovSchmidtReductionPackage {X : Type u} [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
  {F : OneParameterFamily X} where
  splittingCondition : Prop
  reducedEquation : Prop
  persistenceOfSolutions : Prop

structure LyapunovSchmidtReductionEvidence {X : Type u} [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
  {F : OneParameterFamily X} (L : LyapunovSchmidtReductionPackage X F) where
  splittingConditionClosed : L.splittingCondition
  reducedEquationClosed : L.reducedEquation
  persistenceOfSolutionsClosed : L.persistenceOfSolutions

def LyapunovSchmidtReductionClosed {X : Type u} [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
  {F : OneParameterFamily X} (L : LyapunovSchmidtReductionPackage X F) : Prop :=
  L.splittingCondition ∧ L.reducedEquation ∧ L.persistenceOfSolutions

theorem lyapunov_schmidt_reduction_closed_from_evidence {X : Type u} [TopologicalSpace X] [AddCommGroup X] [Module ℝ X]
  {F : OneParameterFamily X} (L : LyapunovSchmidtReductionPackage X F)
  (E : LyapunovSchmidtReductionEvidence L) : LyapunovSchmidtReductionClosed L :=
  And.intro E.splittingConditionClosed (And.intro E.reducedEquationClosed E.persistenceOfSolutionsClosed)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse