abstract class LocationStates{}
class LocationInitialState extends LocationStates{}
class LocationEnabledSuccess extends LocationStates{}
class GetCurrentLocationSuccess extends LocationStates{}
class GetCurrentLocationError extends LocationStates
{
  final error;
  GetCurrentLocationError(this.error);
}
class GetPositionSuccess extends LocationStates{}
