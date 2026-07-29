import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactComplex3FoldsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
