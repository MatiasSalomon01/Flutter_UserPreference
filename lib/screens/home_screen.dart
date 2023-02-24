import 'package:flutter/material.dart';
import 'package:preferences_app/preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode: ${Preferences.isDarkMode}'),
          Divider(),
          Text('Genero: ${Preferences.gender}'),
          Divider(),
          Text('Nombre de Usuario: ${Preferences.name}')
        ],
      ),
    );
  }
}
