import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AngelicityInLocallyConvexSpacePackage where
  locallyConvexSpace : Type u
  angelicPropertyHolds : Prop
  compactEqualsCountablyCompact : Prop
  exampleOfNonAngelic : Prop
  angelicPropertyTerm : angelicPropertyHolds
  compactEqualsCountablyCompactTerm : compactEqualsCountablyCompact
  exampleOfNonAngelicTerm : exampleOfNonAngelic

structure AngelicityInLocallyConvexSpaceEvidence (A : AngelicityInLocallyConvexSpacePackage) where
  angelicPropertyClosed : A.angelicPropertyHolds
  compactEqualsCountablyCompactClosed : A.compactEqualsCountablyCompact
  exampleOfNonAngelicClosed : A.exampleOfNonAngelic

def AngelicityInLocallyConvexSpaceClosed (A : AngelicityInLocallyConvexSpacePackage) : Prop :=
  A.angelicPropertyHolds ∧ A.compactEqualsCountablyCompact ∧ A.exampleOfNonAngelic

theorem angelicity_in_locally_convex_space_closed_from_evidence
    (A : AngelicityInLocallyConvexSpacePackage)
    (E : AngelicityInLocallyConvexSpaceEvidence A) : AngelicityInLocallyConvexSpaceClosed A := by
  exact And.intro E.angelicPropertyClosed
    (And.intro E.compactEqualsCountablyCompactClosed E.exampleOfNonAngelicClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse