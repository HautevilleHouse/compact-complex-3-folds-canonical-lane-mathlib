import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CompactComplex3Fold where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  compactness : Prop
  dimensionThree : Prop
  noSingularities : Prop

def trivialCanonicalBundleCondition (X : CompactComplex3Fold) : Prop :=
  True

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse