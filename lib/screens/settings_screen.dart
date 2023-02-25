import 'package:flutter/material.dart';
import 'package:preferences_app/preferences/preferences.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  static const String routerName = 'settings';

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                  value: Preferences.isDarkMode,
                  title: const Text('Darkmode'),
                  onChanged: (value) {
                    Preferences.isDarkMode = value;
                    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
                    value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile(
                  value: 2,
                  groupValue: Preferences.gender,
                  title: const Text('Femenino'),
                  onChanged: (value) {
                    Preferences.gender = value ?? 2;
                    setState(() {});
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del Usuario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
