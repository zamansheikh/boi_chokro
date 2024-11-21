import 'package:boi_chokro/pages/bottom_nav_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boi Chokro',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BottomNavScreen(),
    );
  }
}
