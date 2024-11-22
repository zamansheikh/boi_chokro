import 'package:latlong2/latlong.dart';
String distanceCalculate(LatLng point1, LatLng point2) {
  // Create a Distance object
  final Distance distance = Distance();
  // Calculate the distance between the two points in meters
  double distanceInMeters = distance.as(LengthUnit.Meter, point1, point2);
  // Convert to kilometers
  double distanceInKm = distanceInMeters / 1000;
  return distanceInKm.toStringAsFixed(2);
}