import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Se importa para usar la clase UserBloc
import 'package:googlelogin/User/bloc/bloc_user.dart';
import 'package:googlelogin/profile_user_page.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  //Se crea un objeto UserBloc
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    //instanciamos el objeto userBloc
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

//Este widget maneja el estado de la sesión
  Widget _handleCurrentSession(){
    //Va a contener la lógica para decidir si se abre la pantalla de login o no
    //Es la respuesta al stream
    return StreamBuilder(
      stream: userBloc.authStatus ,//Lo llamamos desde el archivo bloc_user
      builder: (BuildContext context, AsyncSnapshot snapshot){
        //snapshot contiene nuestros datos (data) - Objeto User
        if(!snapshot.hasData || snapshot.hasError){
          return _signInGoogle();
        }else{
          return ProfileUserPage();
        }
      },
    );
  }

  Widget _signInGoogle(){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SafeArea(
                child: Container(
                  height: 140.0,
                ),
              ),
              SignInButton(
                Buttons.Google,
                onPressed: (){
                  userBloc.signIn().then((FirebaseUser user)=>print('El usuario es ${user.displayName}'));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}