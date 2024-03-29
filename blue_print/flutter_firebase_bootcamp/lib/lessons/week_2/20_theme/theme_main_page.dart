import 'package:flutter/material.dart';
import 'package:flutter_basics/lessons/week_2/20_theme/preferences/theme_preferences_page.dart';

class ThemeMainPage extends StatelessWidget {
  const ThemeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Themes App"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ThemePreferencesPage()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const Center(
        child: Text(
          "Play with Themes",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
