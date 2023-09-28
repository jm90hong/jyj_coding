import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('회원가입'),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
