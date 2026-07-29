import canoncicalLaneMathlib.AdmissibleClass

/-!
# Convex Compactness Package
-/

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure ConvexCompactnessPackage where
  convexCompactSet : Type u
  extremePointExists : Prop
  kreinMilmanTheorem : Prop
  compactnessUnderContinuity : Prop

structure ConvexCompactnessEvidence (P : ConvexCompactnessPackage) where
  extremePointExistsClosed : P.extremePointExists
  kreinMilmanTheoremClosed : P.kreinMilmanTheorem
  compactnessUnderContinuityClosed : P.compactnessUnderContinuity

def ConvexCompactnessClosed (P : ConvexCompactnessPackage) : Prop :=
  P.extremePointExists ∧ P.kreinMilmanTheorem ∧ P.compactnessUnderContinuity

theorem convex_compactness_closed_from_evidence (P : ConvexCompactnessPackage)
    (E : ConvexCompactnessEvidence P) : ConvexCompactnessClosed P := by
  exact And.intro E.extremePointExistsClosed
    (And.intro E.kreinMilmanTheoremClosed E.compactnessUnderContinuityClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
