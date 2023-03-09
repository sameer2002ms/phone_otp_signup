import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp_signup/Screens/Home_Screen.dart';
import 'package:phone_otp_signup/Firebase%20CLI%20Installation/firebase_options.dart';
import 'package:phone_otp_signup/Screens/otp_screen.dart';
import 'package:phone_otp_signup/Screens/phone_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        'phone': (context) => PhoneScreen(),
        'otp': (context) => OTPScreen(),
        'home': (context) => HomeScreen()
      },
      home: PhoneScreen(),
    );
  }
}
