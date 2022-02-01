import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:tripsapp/widgets/gradient_back.dart';
import 'package:tripsapp/widgets/button_green.dart';
import 'package:tripsapp/User/bloc/bloc_user.dart';
import 'package:tripsapp/main_trips_cupertino.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of(context);
    return _handleCurrentsession();
  }

  Widget _handleCurrentsession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // snapshot contain our data - Obeject user
          if (!snapshot.hasData || snapshot.hasError) {
            return signInGoogleUI();
          } else {
            return TripsCupertino();
          }
        });
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome \n this is your travel App",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                  width: 300,
                  height: 50,
                  onPressed: () async {
                    User user = await userBloc.signIn();
                    print("El usuario es ${user.displayName}");
                  },
                  text: 'Login with Gmail'),
            ],
          )
        ],
      ),
    );
  }
}
