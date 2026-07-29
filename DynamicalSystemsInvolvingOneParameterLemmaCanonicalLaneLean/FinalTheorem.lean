import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

def ConstrainedOneParameterLemmaClosure (A : DynamicalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_one_parameter_lemma_endgame (A : DynamicalAdmissibleClass) :
    ConstrainedOneParameterLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse