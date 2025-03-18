import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String settingTitle;
  final dynamic settingSubtitle;
  VoidCallback onPressed;
  SettingsTile({
    super.key,
    required this.settingTitle,
    required this.settingSubtitle,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(settingTitle),
      subtitle: Text(settingSubtitle),
      onTap: onPressed,
    );
  }
}