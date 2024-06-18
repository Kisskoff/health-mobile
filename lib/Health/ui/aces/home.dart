// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_cryptocurrency/Health/Historique/index.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/infoPerso.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/notif.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

import '../../MyComponents/settings.dart';
import '../screen/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger: false,
      title: 'HEALTH MONEY',
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

enum TabItem { home, explore, setting, info }

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TabItem _currentItem = TabItem.home;
  final List<TabItem> _bottomTabs = [
    TabItem.home,
    TabItem.explore,
    TabItem.info,
    TabItem.setting
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: blanc,
        title: subtitleBold(
          text: 'HEALTH MONEY',
          size: 22,
          textColor: Colors.black
        ),
        centerTitle: true,
        leading: Icon(Icons.notes, color: Colors.black54),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(Icons.account_balance_wallet, color: Colors.black54),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => InfoPersonnel()));
              },
            ),
          ),
        ],
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100.0),
      //   child: SafeArea(
      //     child: appBar(
      //         left: Icon(Icons.notes, color: Colors.black54),
      //         title: 'HEALTH MONEY',
      //         right: GestureDetector(
      //           child:
      //               Icon(Icons.account_balance_wallet, color: Colors.black54),
      //           onTap: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (_) => InfoPersonnel()));
      //           },
      //         )),
      //   ),
      // ),
      body: _buildScreen(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomTabs
          .map((tabItem) => _bottomNavigationBarItem(_icon(tabItem), tabItem))
          .toList(),
      onTap: _onSelectTab,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      IconData icon, TabItem tabItem) {
    final Color color = _currentItem == tabItem ? primary : gris;

    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: color,
          size: _currentItem == tabItem ? 25 : 20,
        ),
        label: '');
  }

  void _onSelectTab(int index) {
    TabItem selectedTabItem = _bottomTabs[index];

    setState(() {
      _currentItem = selectedTabItem;
    });
  }

  IconData _icon(TabItem item) {
    switch (item) {
      case TabItem.home:
        return Icons.account_balance_wallet;
      case TabItem.explore:
        return Icons.explore;
      case TabItem.info:
        return Icons.info;
      case TabItem.setting:
        return Icons.settings;
      default:
        throw 'Unknown $item';
    }
  }

  Widget _buildScreen() {
    switch (_currentItem) {
      case TabItem.home:
        return HomeScreen();
      case TabItem.explore:
        return Historique();
      case TabItem.info:
        return MaNotif();
      case TabItem.setting:
        return Settings();
      default:
        return HomeScreen();
    }
  }
}
