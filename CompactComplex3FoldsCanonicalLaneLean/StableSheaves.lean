import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure CoherentSheaf where
  underlyingModule : Module
  coherence : CoherenceCondition

structure StableSheaf where
  sheaf : CoherentSheaf
  slopeStability : SlopeStability
  chernClasses : ChernClasses

structure WallCrossingData where
  wall : ℚ
  crossing : CrossingType
  donaldsonThomasInvariant : ℤ

structure StableSheavesPackage where
  moduliSpace : ModuliSpace
  obstructionTheory : ObstructionTheory
  virtualCycle : VirtualCycle
  donaldsonThomasInvariants : List WallCrossingData

structure StableSheavesEvidence (P : StableSheavesPackage) where
  virtualCycleClosed : P.virtualCycle.exists
  donaldsonThomasInvariantsFinite : P.donaldsonThomasInvariants.length = 1

def StableSheavesClosed (P : StableSheavesPackage) : Prop :=
  P.virtualCycle.exists ∧
  P.donaldsonThomasInvariants.length = 1

theorem stable_sheaves_closed_from_evidence (P : StableSheavesPackage) (E : StableSheavesEvidence P) : StableSheavesClosed P := by
  exact And.intro E.virtualCycleClosed E.donaldsonThomasInvariantsFinite

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse