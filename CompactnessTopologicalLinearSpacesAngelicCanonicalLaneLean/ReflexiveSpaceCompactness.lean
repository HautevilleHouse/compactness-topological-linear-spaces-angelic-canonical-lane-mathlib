import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure ReflexiveSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  isBanach : Prop
  bidualMap : Type v
  surjectivity : Prop
  weakCompactUnitBall : Prop

structure ReflexiveSpaceEvidence (P : ReflexiveSpacePackage) where
  isBanachClosed : P.isBanach
  surjectivityClosed : P.surjectivity
  weakCompactUnitBallClosed : P.weakCompactUnitBall

def ReflexiveSpaceClosed (P : ReflexiveSpacePackage) : Prop :=
  P.isBanach ∧ P.surjectivity ∧ P.weakCompactUnitBall

theorem reflexive_space_closed_from_evidence (P : ReflexiveSpacePackage)
    (E : ReflexiveSpaceEvidence P) : ReflexiveSpaceClosed P := by
  exact And.intro E.isBanachClosed (And.intro E.surjectivityClosed E.weakCompactUnitBallClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
