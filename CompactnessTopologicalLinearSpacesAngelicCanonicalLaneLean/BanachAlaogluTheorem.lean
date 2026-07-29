import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure BanachAlaogluPackage where
  normedSpace : Type u
  dualSpace : Type v
  weakStarCompactnessOfUnitBall : Prop
  weakStarCompactnessOfClosedBounded : Prop
  unitBallCompactTerm : weakStarCompactnessOfUnitBall
  closedBoundedCompactTerm : weakStarCompactnessOfClosedBounded

structure BanachAlaogluEvidence (B : BanachAlaogluPackage) where
  unitBallClosed : B.weakStarCompactnessOfUnitBall
  closedBoundedClosed : B.weakStarCompactnessOfClosedBounded

def BanachAlaogluClosed (B : BanachAlaogluPackage) : Prop :=
  B.weakStarCompactnessOfUnitBall ∧ B.weakStarCompactnessOfClosedBounded

theorem banach_alaoglu_closed_from_evidence (B : BanachAlaogluPackage)
    (E : BanachAlaogluEvidence B) : BanachAlaogluClosed B := by
  exact And.intro E.unitBallClosed E.closedBoundedClosed

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse