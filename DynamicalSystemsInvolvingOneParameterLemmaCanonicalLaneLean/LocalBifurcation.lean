import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure LocalBifurcationPackage (F : OneParameterFamily X) where
  bifurcationPoint : F.parameterSpace
  bifurcationType : String
  stabilityChange : Prop
  normalForm : Prop

def LocalBifurcationClosed (B : LocalBifurcationPackage F) : Prop :=
  B.stabilityChange ∧ B.normalForm

theorem local_bifurcation_closed_from_evidence (B : LocalBifurcationPackage F) (hs : B.stabilityChange) (hn : B.normalForm) : LocalBifurcationClosed B := by
  exact And.intro hs hn

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse