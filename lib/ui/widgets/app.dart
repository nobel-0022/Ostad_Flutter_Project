import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget{
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
   home: SplashScreen(),
      theme: ThemeData(
        inputDecorationTheme:InputDecorationTheme(

            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          )
        ),
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10),

          ),
        ),
      ),
    );
  }
}