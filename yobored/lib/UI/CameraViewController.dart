import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:yobored/UI/cameraView.dart';
import 'package:yobored/UI/profileview.dart';
import 'package:yobored/UI/settingsView.dart';
import 'callview.dart';
import 'chatview.dart';

List<CameraDescription> cameras = [];

class CameraViewController extends StatefulWidget {
  const CameraViewController({Key? key}) : super(key: key);
  @override
  State<CameraViewController> createState() => _CameraViewControllerState();
}

class _CameraViewControllerState extends State<CameraViewController>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.call_rounded),
    ),
    Tab(
      icon: Icon(Icons.chat_bubble),
    ),
    Tab(
      icon: Icon(Icons.camera_alt_rounded),
    ),
    Tab(
      icon: Icon(Icons.person_outline),
    ),
    Tab(
      icon: Icon(Icons.settings),
    ),
  ];

  late TabController _tabController;
  int currentIndex = 0;

  final screens = [
    const callview(),
    const chatview(),
    const cameraView(),
    const settinngsView(),
    const profileview()
  ];
  bool? kDebugMode() => null;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: menu(),
      body: screens[currentIndex],
    );
  }

  menu() {
    return Container(
      color: Colors.black,
      child: SafeArea(
        maintainBottomViewPadding: false,
        // ignore: unnecessary_const
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call_outlined,
                  color: Colors.black,
                ),
                label: 'call',
                activeIcon: Icon(
                  Icons.call_rounded,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.chat_bubble,
                color: Colors.black,
              ),
              label: 'call',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              label: 'call',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'call',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'call',
            ),
          ],
        ),
      ),
    );
  }
}
