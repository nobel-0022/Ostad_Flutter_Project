import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/login_screen.dart';
import 'package:projectofflutter/ui/screens/pin_varification_screen.dart';
import 'package:projectofflutter/ui/screens/sing_up_screen.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';


class ResetPasswordScreen extends StatefulWidget{
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();

}
class _ResetPasswordScreenState extends State<ResetPasswordScreen>{
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
            Text('Set Password',

            style: Theme.of(context).textTheme.titleLarge,),

          const SizedBox(height: 24,),
            Text('Minimum password length should be more than 8 letters',
            style: TextStyle(

              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
              ),
            ),
            const SizedBox(height: 24,),
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PinVerificationScreen(),),);
                },
                  child: const Text('Confirm'),
                ),
            ),
            const SizedBox(height: 48,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),),
                TextButton(onPressed: (){
                 Navigator.pushAndRemoveUntil(context,
                     MaterialPageRoute(builder: (context)=> const LoginScreen()),
                         (route) => false);
                }, child: const Text(
                 'Sing In',
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