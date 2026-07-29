import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure KreinMilmanPackage where
  space : Type u
  topology : TopologicalSpace space
  isLocallyConvex : Prop
  compactConvex : Set space
  extremePoints : Set space
  convexHullClosed : Prop

structure KreinMilmanEvidence (P : KreinMilmanPackage) where
  isLocallyConvexClosed : P.isLocallyConvex
  extremePointsNonempty : P.extremePoints.Nonempty
  convexHullClosedClosed : P.convexHullClosed

def KreinMilmanClosed (P : KreinMilmanPackage) : Prop :=
  P.isLocallyConvex ∧ P.extremePoints.Nonempty ∧ P.convexHullClosed

theorem krein_milman_closed_from_evidence (P : KreinMilmanPackage)
    (E : KreinMilmanEvidence P) : KreinMilmanClosed P := by
  exact And.intro E.isLocallyConvexClosed (And.intro E.extremePointsNonempty E.convexHullClosedClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
