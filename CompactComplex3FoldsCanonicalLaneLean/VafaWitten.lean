import canonicalLaneMathlib.AdmissibleClass
import CompactComplex3FoldsCanonicalLaneLean.StableSheaves

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure VafaWittenSetup where
  threefold : CalabiYauThreefold
  bundle : VectorBundle threefold
  connection : Connection bundle
  equations : VWEquations

structure VafaWittenPackage where
  moduliSpace : ModuliSpace
  virtualCycle : VirtualCycle
  partitionFunction : PartitionFunction
  vanishCondition : VanishCondition

structure VafaWittenEvidence (V : VafaWittenPackage) where
  virtualCycleClosed : V.virtualCycle.exists
  partitionFunctionClosed : V.partitionFunction.converges
  vanishConditionClosed : V.vanishCondition.holds

def VafaWittenClosed (V : VafaWittenPackage) : Prop :=
  V.virtualCycle.exists ∧
  V.partitionFunction.converges ∧
  V.vanishCondition.holds

theorem vafa_witten_closed_from_evidence (V : VafaWittenPackage) (E : VafaWittenEvidence V) : VafaWittenClosed V := by
  exact And.intro E.virtualCycleClosed (And.intro E.partitionFunctionClosed E.vanishConditionClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse