import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder/screens/create_task.dart';
import 'package:reminder/screens/task.dart';
import 'package:reminder/AppStyleModeNotifier.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
      create:(context) => AppStyleModeNotifier(),
    );
  }
}

