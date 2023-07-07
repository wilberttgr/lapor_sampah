import 'package:final_project_2023/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () => authC.lapor(),
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.report_outlined,
                      size: 70,
                      color: Colors.red,
                    ),
                    Text(
                      'Report trash',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () => authC.logout(),
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.assignment_return_outlined,
                      size: 70,
                      color: Colors.black87,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
