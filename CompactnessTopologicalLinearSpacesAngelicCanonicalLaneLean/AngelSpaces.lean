import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  linearStructure : AddCommGroup carrier
  scalarMultiplication : Module ℝ carrier
  angelicProperty : Prop

structure AngelicObject where
  space : AngelSpace
  compactUnitBall : Prop
  closureCompact : Prop
  conclusion : angelicProperty

structure AdmissibleClass where
  object : AngelicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  angelicProperty A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse