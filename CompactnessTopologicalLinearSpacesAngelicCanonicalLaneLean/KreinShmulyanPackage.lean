import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure KreinShmulyanPackage where
  closedConvexHullCompact : Prop
  weakStarCompactness : Prop
  banachAlaogluApplied : Prop

structure KreinShmulyanEvidence (K : KreinShmulyanPackage) where
  closedConvexHullCompactClosed : K.closedConvexHullCompact
  weakStarCompactnessClosed : K.weakStarCompactness
  banachAlaogluAppliedClosed : K.banachAlaogluApplied

def KreinShmulyanClosed (K : KreinShmulyanPackage) : Prop :=
  K.closedConvexHullCompact ∧ K.weakStarCompactness ∧ K.banachAlaogluApplied

theorem krein_shmulyan_closed_from_evidence (K : KreinShmulyanPackage)
    (Ev : KreinShmulyanEvidence K) : KreinShmulyanClosed K := by
  exact And.intro Ev.closedConvexHullCompactClosed
    (And.intro Ev.weakStarCompactnessClosed Ev.banachAlaogluAppliedClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse