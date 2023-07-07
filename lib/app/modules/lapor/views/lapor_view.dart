import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../controllers/lapor_controller.dart';

class LaporView extends GetView<LaporController> {
  const LaporView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Now'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.streamData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            var listAllDocs = snapshot.data!.docs;
            return ListView.builder(
                itemCount: listAllDocs.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 50,
                        ),
                        title: Text(
                          "${(listAllDocs[index].data() as Map<String, dynamic>)["name"]}",
                        ),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Text(
                                  "${(listAllDocs[index].data() as Map<String, dynamic>)["nomor"]}",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Text(
                                  "${(listAllDocs[index].data() as Map<String, dynamic>)["lokasi"]}",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Text(
                                  "${(listAllDocs[index].data() as Map<String, dynamic>)["keterangan"]}",
                                ),
                              )
                            ]),
                      ));
                });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_LAPOR),
        child: Icon(Icons.edit),
      ),
    );
  }
}
