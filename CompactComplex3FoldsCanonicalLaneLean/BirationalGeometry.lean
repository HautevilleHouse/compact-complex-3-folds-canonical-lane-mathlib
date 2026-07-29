import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

-- Package for birational geometry of compact complex 3-folds
structure BirationalGeometryPackage where
  manifold : Type u
  flipExists : Prop
  flopExists : Prop
  divisorialContraction : Prop
  terminalModelExists : Prop

structure BirationalGeometryEvidence (B : BirationalGeometryPackage) where
  flipExistsClosed : B.flipExists
  flopExistsClosed : B.flopExists
  terminalModelExistsClosed : B.terminalModelExists

def BirationalGeometryClosed (B : BirationalGeometryPackage) : Prop :=
  B.flipExists ∧ B.flopExists ∧ B.terminalModelExists

theorem birational_geometry_closed_from_evidence (B : BirationalGeometryPackage)
    (E : BirationalGeometryEvidence B) : BirationalGeometryClosed B := by
  exact And.intro E.flipExistsClosed
    (And.intro E.flopExistsClosed E.terminalModelExistsClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse