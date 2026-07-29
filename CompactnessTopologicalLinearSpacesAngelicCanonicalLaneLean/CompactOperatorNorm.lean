import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure CompactOperatorNormPackage where
  space : Type u
  topology : TopologicalSpace space
  isNormed : Prop
  compactOperator : Type v
  operatorNorm : Prop
  compactnessCriteria : Prop

structure CompactOperatorNormEvidence (P : CompactOperatorNormPackage) where
  isNormedClosed : P.isNormed
  operatorNormClosed : P.operatorNorm
  compactnessCriteriaClosed : P.compactnessCriteria

def CompactOperatorNormClosed (P : CompactOperatorNormPackage) : Prop :=
  P.isNormed ∧ P.operatorNorm ∧ P.compactnessCriteria

theorem compact_operator_norm_closed_from_evidence (P : CompactOperatorNormPackage)
    (E : CompactOperatorNormEvidence P) : CompactOperatorNormClosed P := by
  exact And.intro E.isNormedClosed (And.intro E.operatorNormClosed E.compactnessCriteriaClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
