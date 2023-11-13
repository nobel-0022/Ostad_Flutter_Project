import 'package:flutter/material.dart';
import 'package:projectofflutter/data/data_network_caller/network_caller.dart';
import 'package:projectofflutter/data/utility/urls.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';
import 'package:projectofflutter/data/data_network_caller/network_response.dart';
import 'package:projectofflutter/ui/widgets/snack_message.dart';
class SingUpScreen extends StatefulWidget{
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();

}
class _SingUpScreenState extends State<SingUpScreen>{
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _singUpInProgress = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
  body: BodyBackground(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Form(
           key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Text('Join with us',
            style: Theme.of(context).textTheme.titleLarge,),
            TextFormField(
              controller: _emailTEController,
              decoration: InputDecoration(

                hintText: 'Email',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter your valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 24,),
            TextFormField(
              controller: _firstNameTEController,
               decoration: InputDecoration(
                 hintText: 'First name ',
               ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter your first name';
                }
                return null;
              },
            ),
            const SizedBox(height: 24,),
            TextFormField(
              controller: _lastNameTEController,
              decoration: InputDecoration(
                hintText: 'Last Name',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter your last name';
                }
                return null;
              },
            ),
            const SizedBox(height: 24,),
            TextFormField(
              controller: _mobileTEController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Mobile',
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter your mobile';
                }
                return null;
              },
            ),

            const SizedBox(height: 24,),
            TextFormField(
             controller: _passwordTEController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
              ),
              validator: (String? value){
                if(value?.isEmpty ?? true){
                  return 'Enter your password';
                }
                if(value!.length < 6){
                  return 'Enter password more than 6 letter';
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
            SizedBox(
              width: double.infinity,
                child: Visibility(
                  visible: _singUpInProgress == false,
                  replacement: Center(
                    child: CircularProgressIndicator(),
                  ),
                  child: ElevatedButton(
                    onPressed: _singUp,
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
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
  ),
    );
  }

  Future<void> _singUp()async{
    if(_formKey.currentState!.validate()){
      _singUpInProgress = true;
      if(mounted){
        setState(() {});
      }
      final NetworkResponse response =
      await NetworkCaller().postRequest
        (Urls.registration, body: {
        "email": _emailTEController.text.trim(),
        "firstName": _firstNameTEController.text.trim(),
        "lastName": _lastNameTEController.text.trim(),
        "mobile": _mobileTEController.text.trim(),
        "password":_passwordTEController.text,
        "photo":""
      });
      _singUpInProgress = false;
      if(mounted){
        setState(() {});
      }
      if(response.isSuccess){
        _clearTextFields();
        if(mounted){
          showSnackMessage(context, 'Account has been created! Please login');
        }
      }else{
        showSnackMessage(context, 'Account creation failed! try again', true);
      }
    }
  }


  void _clearTextFields(){
    _emailTEController.clear();
    _firstNameTEController.clear();
    _lastNameTEController.clear();
    _mobileTEController.clear();
    _passwordTEController.clear();
  }
  @override
  void dispose(){
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}