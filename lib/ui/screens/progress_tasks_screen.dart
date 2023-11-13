import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/widgets/profile_summary_card.dart';
import 'package:projectofflutter/ui/widgets/summary_card.dart';
import 'package:projectofflutter/ui/widgets/task_item_card.dart';


class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
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
