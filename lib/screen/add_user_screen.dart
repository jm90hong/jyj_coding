
import 'package:flutter/material.dart';
import 'package:jyj_coding/component/app_text_form.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {

  //아이디, 비번, 닉네임, 주소, 관심분야(앱, 스프링, 서버)
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  TextEditingController pwCheckController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController addressController = TextEditingController();


  String _gender = 'flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('회원가입'),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  child:SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('아이디',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        AppTextField(
                          controller: idController,
                          hintText: '아이디',
                          isPassword: false,
                          width: double.infinity,
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('비밀번호',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        AppTextField(
                          controller: idController,
                          hintText: '비밀번호',
                          isPassword: true,
                          width: double.infinity,
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('비밀번호 확인',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        AppTextField(
                          controller: idController,
                          hintText: '비밀번호 확인',
                          isPassword: true,
                          width: double.infinity,
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('닉네임',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        AppTextField(
                          controller: idController,
                          hintText: '닉네임',
                          isPassword: false,
                          width: double.infinity,
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('주소',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        AppTextField(
                          controller: idController,
                          hintText: '주소',
                          isPassword: false,
                          width: double.infinity,
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 20),
                          child: Text('관심분야',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),

                        ListTile(
                          title: Text('플러터 앱'),
                          leading: Radio(
                            value: 'flutter',
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('스프링 웹'),
                          leading: Radio(
                            value: 'spring',
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                        ),

                        ListTile(
                          title: Text('서버구축'),
                          leading: Radio(
                            value: 'server',
                            groupValue: _gender,
                            onChanged: (value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),




            GestureDetector(
              onTap: (){
                print('클릭됨');
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Center(
                    child: Text('회원가입하기',style: TextStyle(fontSize:18,color: Colors.white, fontWeight: FontWeight.bold),)
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
