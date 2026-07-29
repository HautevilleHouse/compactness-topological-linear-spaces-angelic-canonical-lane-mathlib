import canonicalLaneMathlib.KreinSmulian

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure GrothendieckPackage where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  tvs : TopologicalVectorSpace space
  dualSpace : Type u
  strongTopology : TopologicalSpace dualSpace
  relativelyWeaklyCountablyCompactDual : Prop
  equicontinuous : Prop
  relativelyWeaklyCompactDual : Prop
  conclusion : Prop

structure GrothendieckEvidence (P : GrothendieckPackage) where
  relativelyWeaklyCountablyCompactDualClosed : P.relativelyWeaklyCountablyCompactDual
  equicontinuousClosed : P.equicontinuous
  relativelyWeaklyCompactDualClosed : P.relativelyWeaklyCompactDual
  conclusionClosed : P.conclusion

def GrothendieckClosed (P : GrothendieckPackage) : Prop :=
  P.relativelyWeaklyCountablyCompactDual ∧ P.equicontinuous ∧
  P.relativelyWeaklyCompactDual ∧ P.conclusion

theorem grothendieck_closed_from_evidence (P : GrothendieckPackage)
    (E : GrothendieckEvidence P) : GrothendieckClosed P := by
  exact And.intro E.relativelyWeaklyCountablyCompactDualClosed
    (And.intro E.equicontinuousClosed
      (And.intro E.relativelyWeaklyCompactDualClosed E.conclusionClosed))

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse