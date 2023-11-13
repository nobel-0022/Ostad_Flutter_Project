import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/add_new_task_screen.dart';
import 'package:projectofflutter/ui/widgets/profile_summary_card.dart';
import 'package:projectofflutter/ui/widgets/summary_card.dart';
import 'package:projectofflutter/ui/widgets/task_item_card.dart';


class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddNewTaskScreen(),),);
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
       children: [
      const ProfileSummaryCard(),

      const SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Padding(
           padding: EdgeInsets.only(left:16.0,right: 16),
           child: Row(
             children: [

               SummaryCard(
                 count: '98',
                 title: 'New',
               ),

               SummaryCard(
                 count: '92',
                 title: 'In progress',
               ),

               SummaryCard(
                 count: '88',
                 title: 'Completed',
               ),

               SummaryCard(
                 count: '90',
                 title: 'Canclled',
               ),
             ],
           ),
         ),
       ),

         Expanded(child: ListView.builder(
           itemCount: 5,

           itemBuilder: (context, index){
           return TaskItemCard();
         },
         ),
         ),

       ],
      ),
    );
  }
}


