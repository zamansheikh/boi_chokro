import 'package:boi_chokro/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthRemoteDataSource(this._firebaseAuth, this._firestore);

  // Sign up a new user
  Future<User?> signUp(String email, String password, UserModel user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save user to Firestore after successful sign-up
      await saveUserToDatabase(userCredential.user!.uid, user);

      return userCredential.user;
    } catch (e) {
      throw Exception('Sign Up Failed: $e');
    }
  }

  // Sign in an existing user
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential.user;
    } catch (e) {
      throw Exception('Sign In Failed: $e');
    }
  }

  // Check if a user is currently logged in
  bool isLoggedIn() {
    return _firebaseAuth.currentUser != null;
  }

  // Log out the current user
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception('Sign Out Failed: $e');
    }
  }

  // Save user data to Firestore
  Future<void> saveUserToDatabase(String uid, UserModel user) async {
    try {
      await _firestore.collection('users').doc(uid).set(user.toJson());
    } catch (e) {
      throw Exception('Failed to save user to database: $e');
    }
  }

  // Retrieve user data from Firestore
  Future<UserModel> getUserFromDatabase(String uid) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection('users').doc(uid).get();

      if (doc.exists) {
        return UserModel.fromJson(doc.data() as Map<String, dynamic>);
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      throw Exception('Failed to get user from database: $e');
    }
  }

  // Get current user data (if logged in)
  Future<UserModel?> getCurrentUser() async {
    User? currentUser = _firebaseAuth.currentUser;
    if (currentUser != null) {
      return await getUserFromDatabase(currentUser.uid);
    }
    return null;
  }

  // Update user data in Firestore
  Future<void> updateUserInDatabase(
      String uid, Map<String, dynamic> updates) async {
    try {
      await _firestore.collection('users').doc(uid).update(updates);
    } catch (e) {
      throw Exception('Failed to update user in database: $e');
    }
  }

  // Delete user account
  Future<void> deleteUser(String uid) async {
    try {
      // Remove user data from Firestore
      await _firestore.collection('users').doc(uid).delete();
      // Delete user account from FirebaseAuth
      await _firebaseAuth.currentUser?.delete();
    } catch (e) {
      throw Exception('Failed to delete user: $e');
    }
  }
}
