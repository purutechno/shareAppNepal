import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileFun{
  static const String user = "user";

  Future getUserProfile(String uid){
    return FirebaseFirestore.instance.collection(user).doc(uid).get().then((value) {
      return value.data();
    });
  }

}