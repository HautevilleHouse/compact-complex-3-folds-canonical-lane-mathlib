import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactComplex3FoldsCanonicalLaneLean.CanonicalBundleClassification

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure MinimalModelProgramPackage where
  minimalModelExists : Prop
  birationalProgramComplete : Prop
  kltSingularitiesAllowed : Prop

structure MinimalModelProgramEvidence (M : MinimalModelProgramPackage) where
  minimalModelExistsClosed : M.minimalModelExists
  birationalProgramCompleteClosed : M.birationalProgramComplete
  kltSingularitiesAllowedClosed : M.kltSingularitiesAllowed

def MinimalModelProgramClosed (M : MinimalModelProgramPackage) : Prop :=
  M.minimalModelExists ∧ M.birationalProgramComplete ∧ M.kltSingularitiesAllowed

theorem minimal_model_program_closed_from_evidence (M : MinimalModelProgramPackage)
    (E : MinimalModelProgramEvidence M) : MinimalModelProgramClosed M := by
  exact And.intro E.minimalModelExistsClosed
    (And.intro E.birationalProgramCompleteClosed E.kltSingularitiesAllowedClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse