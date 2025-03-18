import 'package:flutter/material.dart';
import 'package:memoapp/pages/home_page.dart';
import 'package:memoapp/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "memo-app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // マテリアルデザイン3の使用を指定する
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 2
        )
      ),
      home: BottomNavigation(),
    );
  }
}

// navbarの実装
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  // 各画面のリスト
  static const _screens = [
    HomePage(),
    SettingsPage(),
  ];

  // 選択された画面のインデックス流
  int _serectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_serectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _serectedIndex = index;
          });
        },
        indicatorColor: Colors.yellow,
        selectedIndex: _serectedIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: "Setings",
          ),
        ],
      ),
    );
  }
}