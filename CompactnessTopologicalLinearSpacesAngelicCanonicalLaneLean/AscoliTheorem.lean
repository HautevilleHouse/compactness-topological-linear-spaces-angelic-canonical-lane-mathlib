import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure AscoliPackage where
  source : Type u
  target : Type v
  topologySource : TopologicalSpace source
  topologyTarget : TopologicalSpace target
  isCompactSource : Prop
  functionSpace : Set (source → target)
  equicontinuous : Prop
  pointwiseCompact : Prop
  compactClosure : Prop

structure AscoliEvidence (P : AscoliPackage) where
  isCompactSourceClosed : P.isCompactSource
  equicontinuousClosed : P.equicontinuous
  pointwiseCompactClosed : P.pointwiseCompact
  compactClosureClosed : P.compactClosure

def AscoliClosed (P : AscoliPackage) : Prop :=
  P.isCompactSource ∧ P.equicontinuous ∧ P.pointwiseCompact ∧ P.compactClosure

theorem ascoli_closed_from_evidence (P : AscoliPackage) (E : AscoliEvidence P) : AscoliClosed P := by
  exact And.intro E.isCompactSourceClosed
    (And.intro E.equicontinuousClosed (And.intro E.pointwiseCompactClosed E.compactClosureClosed))

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
