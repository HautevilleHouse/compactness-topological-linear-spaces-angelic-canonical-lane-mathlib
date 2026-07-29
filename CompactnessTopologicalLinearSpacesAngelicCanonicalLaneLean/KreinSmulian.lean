import canonicalLaneMathlib.EberleinSmulian

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure KreinSmulianPackage where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  tvs : TopologicalVectorSpace space
  weakStarTopology : TopologicalSpace space
  weaklyStarClosedConvex : Prop
  weaklyClosed : Prop
  closedInWeakStar : Prop
  conclusion : Prop

structure KreinSmulianEvidence (P : KreinSmulianPackage) where
  weaklyStarClosedConvexClosed : P.weaklyStarClosedConvex
  weaklyClosedClosed : P.weaklyClosed
  closedInWeakStarClosed : P.closedInWeakStar
  conclusionClosed : P.conclusion

def KreinSmulianClosed (P : KreinSmulianPackage) : Prop :=
  P.weaklyStarClosedConvex ∧ P.weaklyClosed ∧ P.closedInWeakStar ∧ P.conclusion

theorem krein_smulian_closed_from_evidence (P : KreinSmulianPackage)
    (E : KreinSmulianEvidence P) : KreinSmulianClosed P := by
  exact And.intro E.weaklyStarClosedConvexClosed
    (And.intro E.weaklyClosedClosed
      (And.intro E.closedInWeakStarClosed E.conclusionClosed))

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse