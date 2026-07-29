import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure BishopPhelpsPackage where
  space : Type u
  topology : TopologicalSpace space
  isBanach : Prop
  operator : Type v
  normClosed : Prop
  approxProperty : Prop

structure BishopPhelpsEvidence (P : BishopPhelpsPackage) where
  isBanachClosed : P.isBanach
  normClosedClosed : P.normClosed
  approxPropertyClosed : P.approxProperty

def BishopPhelpsClosed (P : BishopPhelpsPackage) : Prop :=
  P.isBanach ∧ P.normClosed ∧ P.approxProperty

theorem bishop_phelps_closed_from_evidence (P : BishopPhelpsPackage)
    (E : BishopPhelpsEvidence P) : BishopPhelpsClosed P := by
  exact And.intro E.isBanachClosed (And.intro E.normClosedClosed E.approxPropertyClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
