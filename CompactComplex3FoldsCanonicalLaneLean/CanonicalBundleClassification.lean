import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactComplex3FoldsCanonicalLaneLean.CompactComplex3Folds

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CanonicalBundleClassificationPackage (X : CompactComplex3Fold) where
  trivialCanonicalBundle : Prop
  classificationResult : Prop
  stabilityCondition : Prop

structure CanonicalBundleClassificationEvidence {X : CompactComplex3Fold} (C : CanonicalBundleClassificationPackage X) where
  trivialCanonicalBundleClosed : C.trivialCanonicalBundle
  classificationResultClosed : C.classificationResult
  stabilityConditionClosed : C.stabilityCondition

def CanonicalBundleClassificationClosed {X : CompactComplex3Fold} (C : CanonicalBundleClassificationPackage X) : Prop :=
  C.trivialCanonicalBundle ∧ C.classificationResult ∧ C.stabilityCondition

theorem canonical_bundle_classification_closed_from_evidence
    {X : CompactComplex3Fold} (C : CanonicalBundleClassificationPackage X)
    (E : CanonicalBundleClassificationEvidence C) : CanonicalBundleClassificationClosed C := by
  exact And.intro E.trivialCanonicalBundleClosed
    (And.intro E.classificationResultClosed E.stabilityConditionClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse