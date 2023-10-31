import 'package:flutter/material.dart';
import 'package:materialapp_theme/theme/theme_constants.dart';
import 'package:materialapp_theme/theme/theme_manager.dart';

void main() => runApp(const MyApp());

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themMode,
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Data')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Switch(
                  value: _themeManager.themMode == ThemeMode.dark,
                  onChanged: (newValue) {
                    _themeManager.toggleTheme(newValue);
                  }),
              const Text(
                'Theme Data',
                style: TextStyle(fontSize: 40, color: Colors.black54),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
