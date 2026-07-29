import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure EberleinSmulianPackage where
  weaklyCompact : Prop
  weaklySequentiallyCompact : Prop
  angelicPropertyHolds : Prop

structure EberleinSmulianEvidence (E : EberleinSmulianPackage) where
  weaklyCompactClosed : E.weaklyCompact
  weaklySequentiallyCompactClosed : E.weaklySequentiallyCompact
  angelicPropertyHoldsClosed : E.angelicPropertyHolds

def EberleinSmulianClosed (E : EberleinSmulianPackage) : Prop :=
  E.weaklyCompact ∧ E.weaklySequentiallyCompact ∧ E.angelicPropertyHolds

theorem eberlein_smulian_closed_from_evidence (E : EberleinSmulianPackage)
    (Ev : EberleinSmulianEvidence E) : EberleinSmulianClosed E := by
  exact And.intro Ev.weaklyCompactClosed
    (And.intro Ev.weaklySequentiallyCompactClosed Ev.angelicPropertyHoldsClosed)

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse