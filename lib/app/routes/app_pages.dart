import 'package:get/get.dart';

import '../modules/add_lapor/bindings/add_lapor_binding.dart';
import '../modules/add_lapor/views/add_lapor_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lapor/bindings/lapor_binding.dart';
import '../modules/lapor/views/lapor_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LAPOR,
      page: () => const LaporView(),
      binding: LaporBinding(),
    ),
    GetPage(
      name: _Paths.ADD_LAPOR,
      page: () => const AddLaporView(),
      binding: AddLaporBinding(),
    ),
  ];
}
