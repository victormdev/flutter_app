import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/models/user.dart';


class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TheUser _fromFirebaseUser(User user){
    return user != null ? TheUser(uid: user.uid) : null;
  }
  Future signInWithEmailAndPassword(String email, String password) async {
  try{
    UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    User user = result.user;
    return _fromFirebaseUser(user);
  } catch(e){
    print(e.toString());
    return null;
  }
  }
}

