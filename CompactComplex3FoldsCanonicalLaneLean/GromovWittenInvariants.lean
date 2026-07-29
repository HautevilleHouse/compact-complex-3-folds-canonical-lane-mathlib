import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure GromovWittenData where
  threefold : CalabiYauThreefold
  curveClass : CurveClass
  moduliSpace : ModuliSpace
  obstructionTheory : ObstructionTheory
  virtualCycle : VirtualCycle

structure GromovWittenInvariant where
  degree : ℚ
  value : ℚ
  multipleCoverFormula : MultipleCoverFormula

structure GromovWittenPackage where
  invariants : List GromovWittenInvariant
  generatingFunction : GeneratingFunction
  cuspForm : CuspForm

structure GromovWittenEvidence (G : GromovWittenPackage) where
  invariantsFinite : G.invariants.length = 3
  generatingFunctionConverges : G.generatingFunction.converges
  cuspFormModular : G.cuspForm.isModularForm

def GromovWittenClosed (G : GromovWittenPackage) : Prop :=
  G.invariants.length = 3 ∧
  G.generatingFunction.converges ∧
  G.cuspForm.isModularForm

theorem gromov_witten_closed_from_evidence (G : GromovWittenPackage) (E : GromovWittenEvidence G) : GromovWittenClosed G := by
  exact And.intro E.invariantsFinite (And.intro E.generatingFunctionConverges E.cuspFormModular)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse