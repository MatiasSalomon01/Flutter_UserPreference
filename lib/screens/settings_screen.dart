import 'package:flutter/material.dart';


class SettingScreen extends StatelessWidget {

  static const String routerName = 'settings';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Setting'),
     ),
   );
  }
}