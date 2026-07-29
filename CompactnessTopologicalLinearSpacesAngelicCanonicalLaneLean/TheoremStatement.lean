import CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean",
    theoremName := "Angelic Compactness",
    classicalBoundary := "classical boundary: angelic compactness statement in topological vector spaces",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate via admissible class closure",
    carriedRemainder := "unrestricted classical closure remains carried"
  }

def ConstrainedAngelicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_angelic_endgame (A : AdmissibleClass) :
    ConstrainedAngelicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse