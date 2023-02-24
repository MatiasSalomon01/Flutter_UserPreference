import 'package:flutter/material.dart';
import 'package:preferences_app/preferences/preferences.dart';
import 'package:preferences_app/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName :(context) => const HomeScreen(),
        SettingScreen.routerName :(context) => const SettingScreen()
      },
    );
  }
}