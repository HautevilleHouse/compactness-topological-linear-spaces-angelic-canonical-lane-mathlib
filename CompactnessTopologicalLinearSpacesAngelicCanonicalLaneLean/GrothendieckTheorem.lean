import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure GrothendieckPackage where
  completeLocallyConvexSpace : Type u
  dualSpace : Type v
  weakStarSequentialCompactnessOfDual : Prop
  completenessImpliesWeakStarSequentiallyCompact : Prop
  dualSequentiallyCompactTerm : weakStarSequentialCompactnessOfDual
  completenessImpliesTerm : completenessImpliesWeakStarSequentiallyCompact

structure GrothendieckEvidence (G : GrothendieckPackage) where
  dualSequentiallyCompactClosed : G.weakStarSequentialCompactnessOfDual
  completenessImpliesClosed : G.completenessImpliesWeakStarSequentiallyCompact

def GrothendieckClosed (G : GrothendieckPackage) : Prop :=
  G.weakStarSequentialCompactnessOfDual ∧ G.completenessImpliesWeakStarSequentiallyCompact

theorem grothendieck_closed_from_evidence (G : GrothendieckPackage)
    (E : GrothendieckEvidence G) : GrothendieckClosed G := by
  exact And.intro E.dualSequentiallyCompactClosed E.completenessImpliesClosed

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse