import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicCompactnessPackage where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  tvs : TopologicalVectorSpace space
  relativelyCountablyCompactSubset : Set space
  closedConvexHull : Set space
  angelicProperty : Prop
  compactnessConclusion : Prop

structure AngelicCompactnessEvidence (P : AngelicCompactnessPackage) where
  angelicPropertyClosed : P.angelicProperty
  compactnessConclusionClosed : P.compactnessConclusion

def AngelicCompactnessClosed (P : AngelicCompactnessPackage) : Prop :=
  P.angelicProperty ∧ P.compactnessConclusion

theorem angelic_compactness_closed_from_evidence (P : AngelicCompactnessPackage)
    (E : AngelicCompactnessEvidence P) : AngelicCompactnessClosed P := by
  exact And.intro E.angelicPropertyClosed E.compactnessConclusionClosed

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse