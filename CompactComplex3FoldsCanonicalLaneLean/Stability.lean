namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure StabilityPackage (M : Type) [TopologicalSpace M] where
  slopeStabilityCondition : Prop
  polystableDecomposition : Prop
  kahlerEinsteinCondition : Prop

structure StabilityEvidence {M : Type} [TopologicalSpace M] (pkg : StabilityPackage M) where
  slopeStabilityClosed : pkg.slopeStabilityCondition
  polystableDecompositionClosed : pkg.polystableDecomposition
  kahlerEinsteinClosed : pkg.kahlerEinsteinCondition

def StabilityClosed {M : Type} [TopologicalSpace M] (pkg : StabilityPackage M) : Prop :=
  pkg.slopeStabilityCondition ∧ pkg.polystableDecomposition ∧ pkg.kahlerEinsteinCondition

theorem stability_closed_from_evidence {M : Type} [TopologicalSpace M]
    (pkg : StabilityPackage M) (ev : StabilityEvidence pkg) :
    StabilityClosed pkg := by
  exact And.intro ev.slopeStabilityClosed (And.intro ev.polystableDecompositionClosed ev.kahlerEinsteinClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse