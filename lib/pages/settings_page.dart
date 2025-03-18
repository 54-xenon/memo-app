import 'package:flutter/material.dart';
import 'package:memoapp/util/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text("Settings"),
       ),
       body: ListView(
        children: [
          SettingsTile(
            settingTitle: "全てのデータを削除",
            settingSubtitle: "DB内の全てのデータが削除されます。この操作は復元できません",
            onPressed: () {
              // 1. show a daialog
              // 2. all delete button
              // 3. 元のデータに戻る
            },
          )
        ],
       ),
    );
  }
}