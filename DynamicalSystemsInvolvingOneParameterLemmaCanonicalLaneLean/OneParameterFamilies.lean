import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean

structure OneParameterFamily {X : Type u} [TopologicalSpace X] where
  parameterSpace : Type v
  [topoParam : TopologicalSpace parameterSpace]
  family : parameterSpace → X
  continuity : Continuous fun (p : parameterSpace) => family p
  paramConnected : ConnectedSpace parameterSpace

def OneParameterFamilyClosed {X : Type u} [TopologicalSpace X] (F : OneParameterFamily X) : Prop :=
  F.continuity ∧ F.paramConnected

end DynamicalSystemsInvolvingOneParameterLemmaCanonicalLaneLean
end HautevilleHouse