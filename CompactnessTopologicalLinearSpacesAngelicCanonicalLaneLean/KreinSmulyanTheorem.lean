import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure KreinSmulyanPackage where
  locallyConvexSpace : Type u
  weakStarDual : Type v
  weakStarCompactConvexImpliesStrongClosed : Prop
  strongClosedConvexImpliesWeakStarCompact : Prop
  equivalenceForConvexSets : Prop
  weakStarCompactConvexImpliesStrongClosedTerm : weakStarCompactConvexImpliesStrongClosed
  strongClosedConvexImpliesWeakStarCompactTerm : strongClosedConvexImpliesWeakStarCompact
  equivalenceForConvexSetsTerm : equivalenceForConvexSets

structure KreinSmulyanEvidence (K : KreinSmulyanPackage) where
  weakStarCompactConvexClosed : K.weakStarCompactConvexImpliesStrongClosed
  strongClosedConvexClosed : K.strongClosedConvexImpliesWeakStarCompact
  equivalenceClosed : K.equivalenceForConvexSets

def KreinSmulyanClosed (K : KreinSmulyanPackage) : Prop :=
  K.weakStarCompactConvexImpliesStrongClosed ∧
  K.strongClosedConvexImpliesWeakStarCompact ∧
  K.equivalenceForConvexSets

theorem krein_smulyan_closed_from_evidence (K : KreinSmulyanPackage)
    (Ev : KreinSmulyanEvidence K) : KreinSmulyanClosed K := by
  exact And.intro Ev.weakStarCompactConvexClosed
    (And.intro Ev.strongClosedConvexClosed Ev.equivalenceClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse