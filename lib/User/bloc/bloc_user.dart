import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:tripsapp/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = Authrepository();

  // casos de uso
  // 1. signIn a la aplicación
  Future<User> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {}
}
