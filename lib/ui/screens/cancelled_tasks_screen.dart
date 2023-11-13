import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/widgets/profile_summary_card.dart';
import 'package:projectofflutter/ui/widgets/task_item_card.dart';


class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
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
