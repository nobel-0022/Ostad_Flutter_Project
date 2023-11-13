import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectofflutter/ui/screens/login_screen.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    goToLogin();
  }
  void goToLogin(){
    Future.delayed(Duration(seconds: 2)).then((value){
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context)=>  LoginScreen())
          , (route) => false);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: BodyBackground(
        child: Center(
          child: SvgPicture.asset('assets/images/logo.svg',
          width: 120,),
        ),
      ),
    );
  }
}