import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

-- Package for deformation theory of compact complex 3-folds
structure DeformationTheoryPackage where
  manifold : Type u
  kuranishiSpace : Type v
  unobstructedness : Prop
  semiuniversalDeformation : Prop
  deformationsClassified : Prop

structure DeformationTheoryEvidence (D : DeformationTheoryPackage) where
  unobstructednessClosed : D.unobstructedness
  semiuniversalDeformationClosed : D.semiuniversalDeformation
  deformationsClassifiedClosed : D.deformationsClassified

def DeformationTheoryClosed (D : DeformationTheoryPackage) : Prop :=
  D.unobstructedness ∧ D.semiuniversalDeformation ∧ D.deformationsClassified

theorem deformation_theory_closed_from_evidence (D : DeformationTheoryPackage)
    (E : DeformationTheoryEvidence D) : DeformationTheoryClosed D := by
  exact And.intro E.unobstructednessClosed
    (And.intro E.semiuniversalDeformationClosed E.deformationsClassifiedClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse