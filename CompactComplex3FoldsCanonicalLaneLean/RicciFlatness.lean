namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure RicciFlatnessPackage (M : Type) [TopologicalSpace M] where
  ricciVanishing : Prop
  scalarVanishing : Prop
  calabiYauCondition : Prop

structure RicciFlatnessEvidence {M : Type} [TopologicalSpace M] (pkg : RicciFlatnessPackage M) where
  ricciVanishingClosed : pkg.ricciVanishing
  scalarVanishingClosed : pkg.scalarVanishing
  calabiYauConditionClosed : pkg.calabiYauCondition

def RicciFlatnessClosed {M : Type} [TopologicalSpace M] (pkg : RicciFlatnessPackage M) : Prop :=
  pkg.ricciVanishing ∧ pkg.scalarVanishing ∧ pkg.calabiYauCondition

theorem ricci_flatness_closed_from_evidence {M : Type} [TopologicalSpace M]
    (pkg : RicciFlatnessPackage M) (ev : RicciFlatnessEvidence pkg) :
    RicciFlatnessClosed pkg := by
  exact And.intro ev.ricciVanishingClosed (And.intro ev.scalarVanishingClosed ev.calabiYauConditionClosed)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse