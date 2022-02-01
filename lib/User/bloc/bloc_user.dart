import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:tripsapp/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = Authrepository();

  // data flow with streams
  // stream - Firebase
  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streamFirebase;

  // casos de uso
  // 1. signIn a la aplicación
  Future<User> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
