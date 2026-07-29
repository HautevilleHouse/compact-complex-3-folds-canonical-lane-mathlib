import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

-- Package for Kodaira classification of compact complex surfaces (extended to 3-folds)
structure KodairaClassificationPackage where
  manifold : Type u
  kodairaDimension : ℤ
  birationalClassification : Prop
  minimalModel : Prop
  classificationComplete : Prop

structure KodairaClassificationEvidence (K : KodairaClassificationPackage) where
  birationalClassificationClosed : K.birationalClassification
  minimalModelClosed : K.minimalModel
  classificationCompleteClosed : K.classificationComplete

def KodairaClassificationClosed (K : KodairaClassificationPackage) : Prop :=
  K.birationalClassification ∧ K.minimalModel ∧ K.classificationComplete

theorem kodaira_classification_closed_from_evidence (K : KodairaClassificationPackage)
    (E : KodairaClassificationEvidence K) : KodairaClassificationClosed K := by
  exact And.intro E.birationalClassificationClosed
    (And.intro E.minimalModelClosed E.classificationCompleteClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse