import canonicalLaneMathlib.AdmissibleClass
open Set

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure EberleinSmulianPackage where
  space : Type u
  topology : TopologicalSpace space
  isBanach : Prop
  weakTopology : TopologicalSpace space
  weakCompact : Set space → Prop
  weakSeqCompact : Set space → Prop

structure EberleinSmulianEvidence (P : EberleinSmulianPackage) where
  isBanachClosed : P.isBanach
  equivalentlyForm : ∀ (A : Set P.space), P.weakCompact A ↔ P.weakSeqCompact A

def EberleinSmulianClosed (P : EberleinSmulianPackage) : Prop :=
  P.isBanach ∧ ∀ (A : Set P.space), P.weakCompact A ↔ P.weakSeqCompact A

theorem eberlein_smulian_closed_from_evidence (P : EberleinSmulianPackage)
    (E : EberleinSmulianEvidence P) : EberleinSmulianClosed P := by
  exact And.intro E.isBanachClosed E.equivalentlyForm

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse
