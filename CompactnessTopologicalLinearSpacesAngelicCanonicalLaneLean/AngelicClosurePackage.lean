import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean.AngelicCompactnessDefinition

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure ClosurePackage {A : AdmissibleClass} where
  angelic_space : AngelicSpace
  compactnessAssumption : Prop
  closureCondition : Prop
  angelicCompactnessBridge : angelic_space.angelicProperty → compactnessAssumption → closureCondition

def closurePackageClosed {A : AdmissibleClass} (P : ClosurePackage) : Prop :=
  P.closureCondition

theorem closure_from_angelic {A : AdmissibleClass} (P : ClosurePackage) (h_angelic : P.angelic_space.angelicProperty) (h_compact : P.compactnessAssumption) : closurePackageClosed P := by
  exact P.angelicCompactnessBridge h_angelic h_compact

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse