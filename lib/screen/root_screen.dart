import 'package:flutter/material.dart';
import 'package:jyj_coding/screen/add_todo_screen.dart';
import 'package:jyj_coding/screen/index_screen.dart';
import 'package:jyj_coding/screen/info_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  int nowIndex=0;


  List<Widget> screenList = [
    IndexScreen(),
    AddTodoScreen(),
    InfoScreen(),
    InfoScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: screenList[nowIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '공부등록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: '앱정보',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: '앱정보',
          ),
        ],
        currentIndex: nowIndex,
        selectedItemColor: Colors.blue,
        onTap: (index){
         setState(() {
           nowIndex=index;
         });
        },
      ),

    );
  }
}
