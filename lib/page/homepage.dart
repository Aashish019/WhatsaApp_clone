import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:whatsapp_clone/page/calls_page.dart';
import 'package:whatsapp_clone/page/chat_page.dart';
import 'package:whatsapp_clone/page/communities_page.dart';
import 'package:whatsapp_clone/page/updates_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            selectedIndex: controller.selectedIndex.value,

            // labelBehavior:,
            backgroundColor: Colors.white,
            onDestinationSelected: (int index) =>
                controller.selectedIndex.value = index,
            indicatorColor: Colors.green.shade200,
            destinations: const [
              NavigationDestination(
                icon: Badge(
                  backgroundColor: Colors.green,
                  label: Text('2'),
                  child: Icon(Icons.chat_rounded),
                ),
                label: 'Home',
              ),
              NavigationDestination(
                  icon: Badge(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.maps_ugc_rounded),
                  ),
                  label: 'Updates'),
              NavigationDestination(
                  icon: Badge(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.groups_2_outlined),
                  ),
                  label: 'Communities'),
              NavigationDestination(
                  icon: Badge(
                    backgroundColor: Colors.green,
                    label: Text('2'),
                    child: Icon(Icons.call_outlined),
                  ),
                  label: 'Calls'),
            ]),
      ),
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final List<Widget> pages = [
    const ChatPage(),
    const UpdatesPage(),
    const CommunitiesPage(),
    const CallsPage(),
  ];
}
