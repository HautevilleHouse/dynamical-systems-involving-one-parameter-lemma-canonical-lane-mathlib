import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure TransversalityPackage (F : OneParameterFamily X) where
  parameter : F.parameterSpace
  fixedPoint : X
  derivativeCondition : Prop
  eigenvalueCondition : Prop
  hyperbolicity : Prop

def TransversalityClosed (T : TransversalityPackage F) : Prop :=
  T.derivativeCondition ∧ T.eigenvalueCondition ∧ T.hyperbolicity

theorem transversality_closed_from_evidence (T : TransversalityPackage F) (hd : T.derivativeCondition) (he : T.eigenvalueCondition) (hh : T.hyperbolicity) : TransversalityClosed T := by
  exact And.intro hd (And.intro he hh)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse