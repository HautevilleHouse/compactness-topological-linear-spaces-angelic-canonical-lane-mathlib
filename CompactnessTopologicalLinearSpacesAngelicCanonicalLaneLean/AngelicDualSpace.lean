import canoncicalLaneMathlib.AdmissibleClass

/-!
# Angelic Dual Space Package
-/

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicDualSpacePackage where
  dualSpace : Type u
  angelicProperty : Prop
  weakStarSequentialCompactness : Prop
  closureCompactnessEquivalence : Prop

structure AngelicDualSpaceEvidence (P : AngelicDualSpacePackage) where
  angelicPropertyClosed : P.angelicProperty
  weakStarSequentialCompactnessClosed : P.weakStarSequentialCompactness
  closureCompactnessEquivalenceClosed : P.closureCompactnessEquivalence

def AngelicDualSpaceClosed (P : AngelicDualSpacePackage) : Prop :=
  P.angelicProperty ∧ P.weakStarSequentialCompactness ∧ P.closureCompactnessEquivalence

theorem angelic_dual_space_closed_from_evidence (P : AngelicDualSpacePackage)
    (E : AngelicDualSpaceEvidence P) : AngelicDualSpaceClosed P := by
  exact And.intro E.angelicPropertyClosed
    (And.intro E.weakStarSequentialCompactnessClosed E.closureCompactnessEquivalenceClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
