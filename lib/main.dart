import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginGoogle(),
    );
  }
}

class LoginGoogle extends StatefulWidget {
  @override
  _LoginGoogleState createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  bool _isLoogedIn = false;
  Map userProfile;
  //Inicializar GoogleSignIn
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  GoogleSignInAccount googleUser;
  
  Future<void> _loginGoogle()async{
    try{
     //await _googleSignIn.signIn();
     googleUser = await _googleSignIn.signIn();
     // final authHeaders = _googleSignIn.currentUser.authHeaders;
      setState(() {
       _isLoogedIn=true; 
      });
    }catch(err){
      print(err);
    }
  }
 
  void _logout(){
    _googleSignIn.signOut();
    setState(() {
     _isLoogedIn=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _isLoogedIn ?
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(_googleSignIn.currentUser.photoUrl,height: 50.0,width: 50.0,),
          Text(_googleSignIn.currentUser.displayName),
          //Text(_googleSignIn.currentUser.email),
          OutlineButton(
            child: Text('Logout'),
            onPressed: (){
              _logout();
            },
          )
        ],
      ):
      OutlineButton(
        child: Text('Login in Google'),
        onPressed: (){
          _loginGoogle();
        },
      )
      );
  }
}
