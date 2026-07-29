import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean

structure DunfordPettisPackage where
  relativelyWeaklyCompact : Prop
  uniformlyIntegrable : Prop
  weaklySequentiallyCompact : Prop
  topologyCompatibility : Prop

structure DunfordPettisEvidence (D : DunfordPettisPackage) where
  relativelyWeaklyCompactClosed : D.relativelyWeaklyCompact
  uniformlyIntegrableClosed : D.uniformlyIntegrable
  weaklySequentiallyCompactClosed : D.weaklySequentiallyCompact
  topologyCompatibilityClosed : D.topologyCompatibility

def DunfordPettisClosed (D : DunfordPettisPackage) : Prop :=
  D.relativelyWeaklyCompact ∧ D.uniformlyIntegrable ∧
  D.weaklySequentiallyCompact ∧ D.topologyCompatibility

theorem dunford_pettis_closed_from_evidence (D : DunfordPettisPackage)
    (E : DunfordPettisEvidence D) : DunfordPettisClosed D := by
  exact And.intro E.relativelyWeaklyCompactClosed
    (And.intro E.uniformlyIntegrableClosed
      (And.intro E.weaklySequentiallyCompactClosed E.topologyCompatibilityClosed))

end CompactnessTopologicalLinearSpacesAngelicCanonicalLaneLean
end HautevilleHouse