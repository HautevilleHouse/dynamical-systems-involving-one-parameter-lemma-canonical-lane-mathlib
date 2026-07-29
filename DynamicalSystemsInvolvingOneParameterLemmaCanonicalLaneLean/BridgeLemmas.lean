import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

def bridgeClosed (A : DynamicalAdmissibleClass) : Prop :=
  oneParameterLemmaWitnessClosed A.object.state

theorem bridge_from_admissible_class (A : DynamicalAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse