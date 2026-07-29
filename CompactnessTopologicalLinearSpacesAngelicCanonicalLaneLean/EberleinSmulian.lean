import canonicalLaneMathlib.AngelicCompactness

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure EberleinSmulianPackage where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  tvs : TopologicalVectorSpace space
  weakTopology : TopologicalSpace space
  relativelyWeaklyCountablyCompact : Prop
  relativelyWeaklyCompact : Prop
  weaklySequentiallyCompact : Prop

structure EberleinSmulianEvidence (P : EberleinSmulianPackage) where
  relativelyWeaklyCountablyCompactClosed : P.relativelyWeaklyCountablyCompact
  relativelyWeaklyCompactClosed : P.relativelyWeaklyCompact
  weaklySequentiallyCompactClosed : P.weaklySequentiallyCompact

def EberleinSmulianClosed (P : EberleinSmulianPackage) : Prop :=
  P.relativelyWeaklyCountablyCompact ∧ P.relativelyWeaklyCompact ∧ P.weaklySequentiallyCompact

theorem eberlein_smulian_closed_from_evidence (P : EberleinSmulianPackage)
    (E : EberleinSmulianEvidence P) : EberleinSmulianClosed P := by
  exact And.intro E.relativelyWeaklyCountablyCompactClosed
    (And.intro E.relativelyWeaklyCompactClosed E.weaklySequentiallyCompactClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse