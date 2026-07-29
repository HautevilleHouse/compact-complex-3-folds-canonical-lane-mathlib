import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompactComplex3FoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop
  compact : Prop
  dimensionThree : Prop

structure CompactComplex3FoldsAdmittedObject where
  space : CompactComplex3FoldSpace
  calabiYau : Prop
  ricciFlatMetric : Prop
  stabilityCondition : Prop
  conclusion : stabilityCondition

def CompactComplex3FoldsWitnessClosed (O : CompactComplex3FoldsAdmittedObject) : Prop :=
  O.stabilityCondition

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
