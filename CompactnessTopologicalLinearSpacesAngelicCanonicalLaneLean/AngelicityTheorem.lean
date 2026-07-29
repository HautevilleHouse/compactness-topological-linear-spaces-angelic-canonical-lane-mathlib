import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicityTheoremPackage where
  space : Type u
  topology : TopologicalSpace space
  isLinear : Prop
  angelicProperty : Prop
  compactSubset : Set space
  closureCompact : Prop

structure AngelicityTheoremEvidence (P : AngelicityTheoremPackage) where
  isLinearClosed : P.isLinear
  angelicPropertyClosed : P.angelicProperty
  closureCompactClosed : P.closureCompact

def AngelicityTheoremClosed (P : AngelicityTheoremPackage) : Prop :=
  P.isLinear ∧ P.angelicProperty ∧ P.closureCompact

theorem angelicity_theorem_closed_from_evidence (P : AngelicityTheoremPackage)
    (E : AngelicityTheoremEvidence P) : AngelicityTheoremClosed P := by
  exact And.intro E.isLinearClosed (And.intro E.angelicPropertyClosed E.closureCompactClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
