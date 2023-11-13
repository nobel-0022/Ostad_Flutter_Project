import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/widgets/profile_summary_card.dart';
import 'package:projectofflutter/ui/widgets/task_item_card.dart';


class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileSummaryCard(),


          Expanded(child: ListView.builder(
            itemCount: 5,

            itemBuilder: (context, index){
              return TaskItemCard();
            },),),

        ],
      ),
    );
  }
}
