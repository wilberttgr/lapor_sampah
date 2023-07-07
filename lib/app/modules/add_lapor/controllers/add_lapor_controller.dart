import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLaporController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController nomorC;
  late TextEditingController lokasiC;
  late TextEditingController ketC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void add(String name, String nomor, String lokasi, String keterangan) async {
    CollectionReference lapor_pak = firestore.collection("lapor_pak");

    try {
      await lapor_pak.add({
        "name": name,
        "nomor": nomor,
        "lokasi": lokasi,
        "keterangan": keterangan,
      });

      Get.defaultDialog(
        title: "Berhasil melaporkan",
        middleText: "Laporan diterima, terimakasih atas laporan anda",
        onConfirm: () {
          nameC.clear();
          nomorC.clear();
          lokasiC.clear();
          ketC.clear();
          Get.back();
          Get.back();
        },
        textConfirm: "OKAY",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak berhasil melaporkan!",
      );
    }
  }

  @override
  void onInit() {
    nameC = TextEditingController();
    nomorC = TextEditingController();
    lokasiC = TextEditingController();
    ketC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    nomorC.dispose();
    lokasiC.dispose();
    ketC.dispose();
    super.onClose();
  }
}
