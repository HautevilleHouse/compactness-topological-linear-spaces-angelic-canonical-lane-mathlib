import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean.AngelicCompactnessDefinition
import HautevilleHouse.CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean.AngelicClosurePackage

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

def ConstrainedAngelicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_angelic_endgame (A : AdmissibleClass) : ConstrainedAngelicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse