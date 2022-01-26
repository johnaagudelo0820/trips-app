import 'dart:async';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'main_trips_cupertino.dart';
import 'package:tripsapp/User/bloc/bloc_user.dart';
import 'package:tripsapp/User/ui/screens/sign_in_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          home: SignInScreen(),
        ),
        bloc: UserBloc());
  }
}
