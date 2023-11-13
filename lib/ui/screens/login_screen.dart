import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/forgot_Password_screen.dart';
import 'package:projectofflutter/ui/screens/main_bottom_nav_sereen.dart';
import 'package:projectofflutter/ui/screens/sing_up_screen.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
  body: BodyBackground(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Text('Get Started with',

            style: Theme.of(context).textTheme.titleLarge,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 hintText: 'Email',
               ),
            ),
            const SizedBox(height: 24,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
              ),
            ),


            const SizedBox(height: 24,),
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainBottomNavScreen(),),);
                },
                  child: const Icon(Icons.arrow_circle_right_outlined),
                ),
            ),
            const SizedBox(height: 48,),
            Center(child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen(),),);

            }, child: Text('Forgot Password?',
            style: TextStyle(color: Colors.grey,fontSize: 16),),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SingUpScreen(),),);
                }, child: const Text(
                 'Sing Up',
                 style: TextStyle(fontSize: 16),
                ),),
              ],
            )
          ],
          ),
        ),
      ),
    ),
  ),
    );
  }
}