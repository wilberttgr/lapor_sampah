import 'package:final_project_2023/app/controllers/auth_controller.dart';
import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Trash Online'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(
                controller: emailC,
                decoration: const InputDecoration(
                    hintText: "Enter Username Here", labelText: "Username"),
              ),
              TextField(
                controller: passC,
                decoration: const InputDecoration(
                    hintText: "Enter Password Here", labelText: "Password"),
                obscureText: true,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () => authC.login(emailC.text, passC.text),
                child: const Text("Login"),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.SIGNUP),
                    child: const Text("Create Account"),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
