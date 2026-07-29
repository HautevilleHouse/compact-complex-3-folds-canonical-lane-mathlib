import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure AdmissibleClass where
  object : CompactComplex3FoldsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompactComplex3FoldsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
