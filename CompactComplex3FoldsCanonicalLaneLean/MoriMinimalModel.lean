import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure MoriProgramData where
  variety : SmoothProjectiveVariety
  canonicalBundle : LineBundle variety
  kodairaDimension : KodairaDimension
  minimalModel : MinimalModel
  flips : List Flip

structure MoriProgramEvidence (D : MoriProgramData) where
  minimalModelExists : D.minimalModel.exists
  flipsTerminate : D.flips.allTerminate
  canonicalBundleNegative : D.canonicalBundle.negative

def MoriProgramClosed (D : MoriProgramData) : Prop :=
  D.minimalModel.exists ∧
  D.flips.allTerminate ∧
  D.canonicalBundle.negative

theorem mori_program_closed_from_evidence (D : MoriProgramData) (E : MoriProgramEvidence D) : MoriProgramClosed D := by
  exact And.intro E.minimalModelExists (And.intro E.flipsTerminate E.canonicalBundleNegative)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse