import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure GeometrizationPackage where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesProjectivePiece : Prop

structure GeometrizationEvidence (Z : GeometrizationPackage) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  geometrizedPiecesClassifiedClosed : Z.geometrizedPiecesClassified
  simplyConnectedCaseForcesProjectivePieceClosed : Z.simplyConnectedCaseForcesProjectivePiece

def GeometrizationClosed (Z : GeometrizationPackage) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.geometrizedPiecesClassified ∧ Z.simplyConnectedCaseForcesProjectivePiece

theorem geometrization_closed_from_evidence
    (Z : GeometrizationPackage) (E : GeometrizationEvidence Z) :
    GeometrizationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.geometrizedPiecesClassifiedClosed
        E.simplyConnectedCaseForcesProjectivePieceClosed))

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
