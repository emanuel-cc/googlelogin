import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:googlelogin/User/bloc/bloc_user.dart';
import 'package:googlelogin/User/ui/screen/signin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          child: MaterialApp(
        home: SignInScreen(),
      ),
      bloc: UserBloc(),
    );
  }
}

