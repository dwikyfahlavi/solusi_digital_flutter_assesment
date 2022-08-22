import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solusi_digital_flutter_assesment/providers/news_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solusi_digital_flutter_assesment/screens/homepage.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => NewsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(primarySwatch: Colors.blue, textTheme: GoogleFonts.rubikTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
