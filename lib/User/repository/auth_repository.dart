import 'package:firebase_auth/firebase_auth.dart';
import 'package:tripsapp/User/repository/firebase_auth_api.dart';

class Authrepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<User> signInFirebase() => _firebaseAuthAPI.signIn();
}
