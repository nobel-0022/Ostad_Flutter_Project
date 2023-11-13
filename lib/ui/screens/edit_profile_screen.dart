import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/widgets/body_background.dart';
import 'package:projectofflutter/ui/widgets/profile_summary_card.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummaryCard(
              enableOnTap: false,
            ),
            Expanded(
                child:BodyBackground(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32,),
                          Text('Update Profile',style: Theme.of(context).textTheme.titleLarge,),
                          const SizedBox(height: 16,),
                         PhotoPickerField(),
                          const SizedBox(height: 8,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 8,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'First name',
                            ),
                          ),
                          const SizedBox(height: 8,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Last name',
                            ),
                          ),
                          const SizedBox(height: 8,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Mobile',
                            ),
                          ),
                          const SizedBox(height: 8,),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Password',
                            ),
                          ),
                          const SizedBox(height: 16,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: const Icon(Icons.arrow_circle_right_outlined),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ) ,
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoPickerField extends StatelessWidget {
  const PhotoPickerField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [

          Expanded(flex: 1,
          child: Container(
            height: 50,

            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              )
            ),
            alignment: Alignment.center,
            child: Text('Photo',style: TextStyle(
              color: Colors.white,
            ),),
          ),),
          Expanded(flex: 1,
            child: Container(
              child: Text('Text....'),
            ),
          ),
        ],
      ),
    );
  }
}
