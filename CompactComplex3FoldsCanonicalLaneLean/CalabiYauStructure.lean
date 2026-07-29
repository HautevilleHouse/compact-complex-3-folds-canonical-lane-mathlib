import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CalabiYauThreefold where
  carrier : Type u
  complexStructure : ComplexStructure carrier
  kahlerForm : KahlerForm carrier
  chernClassOne : ChernClass carrier
  ricciFlatMetric : RicciFlatMetric carrier
  holonomySU3 : HolonomySU3 carrier

structure CalabiYauPackage where
  threefold : CalabiYauThreefold
  kahlerClass : KahlerClass
  complexModuli : ComplexModuli
  mirrorSymmetry : MirrorSymmetry

structure CalabiYauEvidence (C : CalabiYauPackage) where
  ricciFlatMetricClosed : C.threefold.ricciFlatMetric.property
  holonomySU3Closed : C.threefold.holonomySU3.property
  complexModuliClosed : C.complexModuli.nonempty

def CalabiYauClosed (C : CalabiYauPackage) : Prop :=
  C.threefold.ricciFlatMetric.property ∧
  C.threefold.holonomySU3.property ∧
  C.complexModuli.nonempty

theorem calabi_yau_closed_from_evidence (C : CalabiYauPackage) (E : CalabiYauEvidence C) : CalabiYauClosed C := by
  exact And.intro E.ricciFlatMetricClosed (And.intro E.holonomySU3Closed E.complexModuliClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse