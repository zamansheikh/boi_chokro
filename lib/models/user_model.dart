import 'package:latlong2/latlong.dart';

class UserModel {
  String name;
  String email;
  double longitude;
  double latitude;
  String phone;
  String libraryName;

  UserModel({
    required this.name,
    required this.email,
    required this.longitude,
    required this.latitude,
    required this.phone,
    required this.libraryName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      phone: json['phone'],
      libraryName: json['libraryName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'longitude': longitude,
      'latitude': latitude,
      'phone': phone,
      'libraryName': libraryName,
    };
  }

  static LatLng toLatLng(UserModel user) {
    return LatLng(user.latitude, user.longitude);
  }
}
