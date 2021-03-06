import 'package:get/get.dart';

import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
import '../modules/event_add/bindings/event_add_binding.dart';
import '../modules/event_add/views/event_add_view.dart';
import '../modules/event_detail/bindings/event_detail_binding.dart';
import '../modules/event_detail/views/event_detail_view.dart';
import '../modules/event_edit/bindings/event_edit_binding.dart';
import '../modules/event_edit/views/event_edit_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/index/bindings/index_binding.dart';
import '../modules/index/views/index_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.index,
      page: () => const IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.event,
      page: () => const EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.profil,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.eventDetail,
      page: () => EventDetailView(),
      binding: EventDetailBinding(),
    ),
    GetPage(
      name: _Paths.eventAdd,
      page: () => const EventAddView(),
      binding: EventAddBinding(),
    ),
    GetPage(
      name: _Paths.eventEdit,
      page: () => const EventEditView(),
      binding: EventEditBinding(),
    ),
    GetPage(
      name: _Paths.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
