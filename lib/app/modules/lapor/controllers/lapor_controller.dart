import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class LaporController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference lapor_pak = firestore.collection("lapor_pak");
    return lapor_pak.snapshots();
  }
}
