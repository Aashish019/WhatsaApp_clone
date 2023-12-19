import 'package:get/get.dart';
import 'package:whatsapp_clone/page/calls_page.dart';
import 'package:whatsapp_clone/page/chat_page.dart';
import 'package:whatsapp_clone/page/communities_page.dart';
import 'package:whatsapp_clone/page/updates_page.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final List pages = [
    const ChatPage(),
    const UpdatesPage(),
    const CommunitiesPage(),
    const CallsPage(),
  ];
}
