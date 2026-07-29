import canoncicalLaneMathlib.AdmissibleClass

/-!
# Weak-Star Topology Package
-/

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure WeakStarTopologyPackage where
  dualSpace : Type u
  weakStarTopology : Type v
  predualSpace : Type w
  closedUnitBallCompact : Prop
  banachAlaogluApplicable : Prop

structure WeakStarTopologyEvidence (P : WeakStarTopologyPackage) where
  closedUnitBallCompactClosed : P.closedUnitBallCompact
  banachAlaogluApplicableClosed : P.banachAlaogluApplicable

def WeakStarTopologyClosed (P : WeakStarTopologyPackage) : Prop :=
  P.closedUnitBallCompact ∧ P.banachAlaogluApplicable

theorem weak_star_topology_closed_from_evidence (P : WeakStarTopologyPackage)
    (E : WeakStarTopologyEvidence P) : WeakStarTopologyClosed P := by
  exact And.intro E.closedUnitBallCompactClosed E.banachAlaogluApplicableClosed

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
