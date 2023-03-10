import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';


class AuthException implements Exception{
  String message;
  AuthException(this.message);
}



class AuthService extends ChangeNotifier{
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;

  AuthService(){
    _authCheck();
  }

  _authCheck(){
    _auth.authStateChanges().listen((User? user){
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUser(){
    usuario = _auth.currentUser;
    notifyListeners();
  }

  registrar(String email, String senha) async {
    try{
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: senha
      );
      _getUser();
    } on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        throw AuthException('A senha é muito fraca');
      } else if(e.code == 'email-already-in-use'){
        throw AuthException('O e-mail já está em uso');
      }
    }
  }

  login (String email, String senha) async {
    try{
      await _auth.signInWithEmailAndPassword(
          email: email,
          password: senha
      );
      _getUser();
    } on FirebaseAuthException catch (e){
      if(e.code == 'user-not-found'){
        throw AuthException('E-mail não foi encontrado. Cadastre-se.');
      } else if(e.code == 'wrong-password'){
        throw AuthException('Senha incorreta ou email incorretos. Tente Novamente.');
      }
    }
  }

  logout() async {
    _auth.signOut();
    _getUser();
  }

}