import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';


class SettingScreen extends StatefulWidget {

  static const String routerName = 'settings';

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool isDarkMode = false;
  int gender = 1;
  String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings')
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
              const Divider(),
              SwitchListTile.adaptive(
                value: isDarkMode,
                title: const Text('Darkmode'),
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile(
                value: 1, 
                groupValue: gender, 
                title: const Text('Masculino'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile(
                value: 0, 
                groupValue: gender, 
                title: const Text('Femenino'),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: name,
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del Usuario'
                  ),
                ),
              )
            ],
          ),
        ),
      )
   );
  }
}