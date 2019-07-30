//Este archivo va a contener todos los casos de uso de la aplicación

import 'package:generic_bloc_provider/generic_bloc_provider.dart';
//Se importa el archivo repositorio creado anteriormente
import 'package:googlelogin/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Aquí consultamos el repositorio, la fuente de datos
//Ya que el método que se usa se está llamando desde la interfaz de usuario
class UserBloc implements Bloc{
  //Se crea una variable de tipo AuthRepository
  final _auth_repository = AuthRepository(); //Aquì llamamos al método signin

  //Se declara el stream - Flujo de datos
  //Stream - Firebase
  //StreamController
  //Un stream a devolver
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;

  //Para acceder al estado del stream, nos devuelve el estado de la sesión
  Stream<FirebaseUser> get authStatus =>streamFirebase;

//Los bloc se conectan con la interfaz de usuario
  //Caso de uso
  //1. Sign In a la aplicacion con google
  Future<FirebaseUser> signIn(){ //Se va a llamar en la interfaz
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose

  }

}