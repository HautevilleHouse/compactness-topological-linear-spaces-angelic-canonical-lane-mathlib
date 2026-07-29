import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  tvs : TopologicalVectorSpace space
  angelicProperty : Prop
  conclusion : angelicProperty

structure AdmissibleClass where
  object : AngelicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AngelicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse