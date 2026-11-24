import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

void main() {
  runApp(const FlutterStaticApp());
}

class FlutterStaticApp extends StatelessWidget {
  const FlutterStaticApp({super.key});

  // Change to `true` to preview RegisterScreen, or `false` for LoginScreen
  static const bool showRegisterScreen = false;

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF1E3A8A);
    const Color accentColor = Color(0xFF3B82F6);
    const Color surfaceBg = Color(0xFFF8FAFC);

    return MaterialApp(
      title: 'Flutter Static Auth UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: accentColor,
          surface: surfaceBg,
        ),
        scaffoldBackgroundColor: surfaceBg,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1E293B),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF475569),
          ),
          labelLarge: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      home: showRegisterScreen ? const RegisterScreen() : const LoginScreen(),
    );
  }
}