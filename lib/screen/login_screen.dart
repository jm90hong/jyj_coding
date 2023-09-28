import 'package:flutter/material.dart';
import 'package:jyj_coding/component/app_text_form.dart';
import 'package:jyj_coding/screen/add_user_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 70,
            ),
            Text('로그인'),
            AppTextField(
              controller: idController,
              hintText: '아이디',
              isPassword: false,
            ),


            SizedBox(height: 12,),
            AppTextField(
                controller: pwController,
                hintText: '비밀번호',
                isPassword: true
            ),

            SizedBox(height: 20,),

            //todo 로그인 버튼
             Material(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blue,
               child: InkWell(
                 borderRadius: BorderRadius.circular(10),
                 onTap: (){
                   var id = idController.text;
                   var pw = pwController.text;
                   print(id);
                   print(pw);
                 },
                 child: Container(
                   width: 270,
                   height: 42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Center(child: Text('로그인',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                 ),
               ),
            ),
            SizedBox(height:10,),
            //todo 회원가입입 버튼
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: (){
                  //회원가입 스크린으로 이동
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddUserScreen()));
                },
                child: Container(
                  width: 270,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('회원가입',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 16),)),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
