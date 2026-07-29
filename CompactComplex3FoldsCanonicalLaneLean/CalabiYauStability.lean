import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CalabiYauStabilityPackage where
  ricciFlatMetricExists : Prop
  complexModuliStable : Prop
  kahlerEinsteinCondition : Prop
  stabilityUnderDeformation : Prop

structure CalabiYauStabilityEvidence (C : CalabiYauStabilityPackage) where
  ricciFlatMetricExistsClosed : C.ricciFlatMetricExists
  complexModuliStableClosed : C.complexModuliStable
  stabilityUnderDeformationClosed : C.stabilityUnderDeformation

def CalabiYauStabilityClosed (C : CalabiYauStabilityPackage) : Prop :=
  C.ricciFlatMetricExists ∧ C.complexModuliStable ∧ C.stabilityUnderDeformation

theorem calabi_yau_stability_closed_from_evidence (C : CalabiYauStabilityPackage) (E : CalabiYauStabilityEvidence C) : CalabiYauStabilityClosed C := by
  exact And.intro E.ricciFlatMetricExistsClosed (And.intro E.complexModuliStableClosed E.stabilityUnderDeformationClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
