import 'package:boi_chokro/models/user_model.dart';
import 'package:boi_chokro/services/firebase_auth_remote_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepo {
  static final authRemoteDataSource = FirebaseAuthRemoteDataSource(
    FirebaseAuth.instance,
    FirebaseFirestore.instance,
  );

// Example: Sign up a user
  final newUser = UserModel(
    name: "John Doe",
    email: "john.doe@example.com",
    latitude: 23.8103,
    longitude: 90.4125,
    phone: "+880123456789",
    libraryName: "John's Library",
  );
}
