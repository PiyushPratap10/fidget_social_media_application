import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //Sign up the user
  Future<String> signUp({
    required String email,
    required String userName,
    required String password,
    required Uint8List file,
  }) async {
    String notify = 'Error occured';

    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          userName.isNotEmpty &&
          file != null) {
        UserCredential result = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        print(result.user!.uid);

        _firestore.collection('users').doc(result.user!.uid).set({
          'userName': userName,
          'email': email,
          'profilePic': file,
          "uid": result.user!.uid,
          'followers': [],
          'followings': [],
        });
        notify = "Success";
      }
      return notify;
    } catch (error) {
      return error.toString();
    }
  }
}
