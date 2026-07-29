import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicCompactnessPackage where
  topology : Type u
  linearStructure : Type v
  angelicProperty : Prop
  compactnessCriterion : Prop
  countableCompactnessImpliesCompactness : Prop
  angelicPropertyTerm : angelicProperty
  compactnessCriterionTerm : compactnessCriterion
  countableCompactnessImpliesCompactnessTerm : countableCompactnessImpliesCompactness

structure AngelicCompactnessEvidence (A : AngelicCompactnessPackage) where
  angelicPropertyClosed : A.angelicProperty
  compactnessCriterionClosed : A.compactnessCriterion
  countableCompactnessImpliesCompactnessClosed : A.countableCompactnessImpliesCompactness

def AngelicCompactnessClosed (A : AngelicCompactnessPackage) : Prop :=
  A.angelicProperty ∧ A.compactnessCriterion ∧ A.countableCompactnessImpliesCompactness

theorem angelic_compactness_closed_from_evidence (A : AngelicCompactnessPackage)
    (E : AngelicCompactnessEvidence A) : AngelicCompactnessClosed A := by
  exact And.intro E.angelicPropertyClosed
    (And.intro E.compactnessCriterionClosed E.countableCompactnessImpliesCompactnessClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse