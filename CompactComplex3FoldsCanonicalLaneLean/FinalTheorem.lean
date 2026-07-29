import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactComplex3FoldsCanonicalLaneLean.MinimalModelProgram

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

def ConstrainedCompactComplex3FoldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compact_complex_3_folds_endgame (A : AdmissibleClass) :
    ConstrainedCompactComplex3FoldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse