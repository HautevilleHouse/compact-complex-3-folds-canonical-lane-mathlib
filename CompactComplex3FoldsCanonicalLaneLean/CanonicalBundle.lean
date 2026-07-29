namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CanonicalBundlePackage (M : Type) [TopologicalSpace M] where
  canonicalLineBundle : Type
  positivityCondition : Prop
  kodairaDimension : Nat

structure CanonicalBundleEvidence {M : Type} [TopologicalSpace M] (pkg : CanonicalBundlePackage M) where
  canonicalLineBundleClosed : Type := pkg.canonicalLineBundle
  positivityConditionClosed : pkg.positivityCondition
  kodairaDimensionClosed : pkg.kodairaDimension = pkg.kodairaDimension

def CanonicalBundleClosed {M : Type} [TopologicalSpace M] (pkg : CanonicalBundlePackage M) : Prop :=
  pkg.positivityCondition ∧ pkg.kodairaDimension ≥ 0

theorem canonical_bundle_closed_from_evidence {M : Type} [TopologicalSpace M]
    (pkg : CanonicalBundlePackage M) (ev : CanonicalBundleEvidence pkg) :
    CanonicalBundleClosed pkg := by
  exact And.intro ev.positivityConditionClosed (by
    have h : pkg.kodairaDimension = pkg.kodairaDimension := rfl
    exact h)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse