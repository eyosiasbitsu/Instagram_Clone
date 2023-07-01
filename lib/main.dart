
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/feed_screen.dart';

void main(){
WidgetsFlutterBinding.ensureInitialized();
  runApp(InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget{
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFF262626)),
      ),

      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/feed': (context) => FeedScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  final List<double> strengths = <double>[.05];
  final Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (final double strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}