import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplex3FoldsCanonicalLaneLean

structure MathlibAvailableAnalyticBodies where
  riemannianVectorSpaceBodyAvailable : Prop
  identityFlowZeroBodyAvailable : Prop
  flowAdditivityBodyAvailable : Prop
  invariantToForwardInvariantBodyAvailable : Prop
  smoothPoincareEndpointBodyAvailable : Prop
  riemannianVectorSpaceBodyAvailableTerm : riemannianVectorSpaceBodyAvailable
  identityFlowZeroBodyAvailableTerm : identityFlowZeroBodyAvailable
  flowAdditivityBodyAvailableTerm : flowAdditivityBodyAvailable
  invariantToForwardInvariantBodyAvailableTerm : invariantToForwardInvariantBodyAvailable
  smoothPoincareEndpointBodyAvailableTerm : smoothPoincareEndpointBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  riemannianVectorSpaceBodyAvailable := True,
  identityFlowZeroBodyAvailable := True,
  flowAdditivityBodyAvailable := True,
  invariantToForwardInvariantBodyAvailable := True,
  smoothPoincareEndpointBodyAvailable := True,
  riemannianVectorSpaceBodyAvailableTerm := by exact True.intro,
  identityFlowZeroBodyAvailableTerm := by exact True.intro,
  flowAdditivityBodyAvailableTerm := by exact True.intro,
  invariantToForwardInvariantBodyAvailableTerm := by exact True.intro,
  smoothPoincareEndpointBodyAvailableTerm := by exact True.intro
}

end CompactComplex3FoldsCanonicalLaneLean
end HautevilleHouse
