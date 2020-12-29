import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInAnon() async {
    try{
      // final FirebaseUser user = (await _auth.signInAnonymously()).user;
      // UserCredential credential = await _auth.signInAnonymously();
      // // ignore: deprecated_member_use
      // FirebaseUser user = credential.user;
      return  await FirebaseAuth.instance.signInAnonymously();

    }catch(e){
      print(e.toString());
      return null;

    }
  }
}