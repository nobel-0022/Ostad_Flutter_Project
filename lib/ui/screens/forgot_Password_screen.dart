import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/pin_varification_screen.dart';
import 'package:projectofflutter/ui/screens/sing_up_screen.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';


class ForgotPasswordScreen extends StatefulWidget{
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();

}
class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>{
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
            Text('Your Eamil Address',

            style: Theme.of(context).textTheme.titleLarge,),

          const SizedBox(height: 24,),
            Text('A 6 digit OTP will be sent to your email address',
            style: TextStyle(

              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),


            const SizedBox(height: 24,),
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PinVerificationScreen(),),);
                },
                  child: const Icon(Icons.arrow_circle_right_outlined),
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
                 Navigator.pop(context);
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