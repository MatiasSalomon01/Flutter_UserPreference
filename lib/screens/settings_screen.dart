import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';


class SettingScreen extends StatelessWidget {

  static const String routerName = 'settings';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings')
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Setting'),
     ),
   );
  }
}