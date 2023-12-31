import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectofflutter/ui/screens/cancelled_tasks_screen.dart';
import 'package:projectofflutter/ui/screens/completed_tasks_screen.dart';
import 'package:projectofflutter/ui/screens/new_tasks_screen.dart';
import 'package:projectofflutter/ui/screens/progress_tasks_screen.dart';

class MainBottomNavScreen extends StatefulWidget{
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();

}
class _MainBottomNavScreenState extends State<MainBottomNavScreen>{
  int _selectedIndex = 0;

  List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _selectedIndex = index;
          setState(() {

          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_outlined),label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.close),label: 'Cencelled'),
        ],
      ),
    );
  }
}