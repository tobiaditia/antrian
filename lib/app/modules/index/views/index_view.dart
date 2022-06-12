import 'package:antrian/app/modules/event/views/event_view.dart';
import 'package:antrian/app/modules/home/views/home_view.dart';
import 'package:antrian/app/modules/profil/views/profil_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children:  [const HomeView(), const EventView(), ProfilView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Acara',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      );
    });
  }
}
