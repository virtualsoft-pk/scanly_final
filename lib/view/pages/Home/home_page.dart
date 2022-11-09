import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/Product/history_page.dart';
import 'package:scanly/view/pages/Home/Scan/scan_page.dart';
import 'package:scanly/view/pages/Home/Settings/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;

  List<Widget> pages = [
    const ScanPage(),
    HistoryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: pages[selectedIndex]),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 110,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _NavBarItem(
                        icon: Icons.filter_center_focus,
                        label: "scanner",
                        active: selectedIndex == 0,
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                      ),
                      _NavBarItem(
                        icon: Icons.history,
                        label: "history",
                        active: selectedIndex == 1,
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                      ),
                      _NavBarItem(
                        icon: Icons.settings,
                        label: "settings",
                        active: selectedIndex == 2,
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                      ),
                    ]),
              )),
        ]),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.active,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          active
              ? CircleAvatar(
                  radius: 26,
                  backgroundColor: buttonColor,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                )
              : Icon(
                  icon,
                  color: const Color(0xFFA2A2A2),
                ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFFA2A2A2),
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ).tr()
        ]),
      ),
    );
  }
}
