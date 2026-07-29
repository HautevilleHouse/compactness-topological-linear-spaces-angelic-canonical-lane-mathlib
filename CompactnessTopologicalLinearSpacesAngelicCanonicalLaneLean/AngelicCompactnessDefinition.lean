import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearOrder : LinearOrder carrier
  orderTopology : OrderTopology carrier := by infer_instance
  angelicProperty : Prop

def angelicSpaceClosed (A : AngelicSpace) : Prop :=
  A.angelicProperty

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse