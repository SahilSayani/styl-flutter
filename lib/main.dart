import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styl/screens/login_screen.dart';
import 'package:styl/screens/checkout.dart';
import 'screens/signup.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: 'login_screen',
      routes: {
        'home_screen': (context) => HomeScreen(),
        'login_screen': (context) => LoginPage(),
        'sign_up_screen': (content) => SignUp(),
        'checkout_screen': (content) => CheckoutPage(),
      },
    );
  }
}
