import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_lapor_controller.dart';

class AddLaporView extends GetView<AddLaporController> {
  const AddLaporView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Report'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller.nameC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Nama Anda",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.nomorC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Nomor Ponsel",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.lokasiC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Lokasi yang Dilaporkan",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.ketC,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Keterangan",
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => controller.add(
                  controller.nameC.text,
                  controller.nomorC.text,
                  controller.lokasiC.text,
                  controller.ketC.text,
                ),
                child: Text("Laporkan"),
              )
            ],
          ),
        ));
  }
}
