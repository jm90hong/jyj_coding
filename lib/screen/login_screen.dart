import 'package:flutter/material.dart';
import 'package:jyj_coding/screen/add_user_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(color: Colors.black,fontSize:20),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(

                      isDense: true,
                      fillColor: Colors.grey.shade300,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: '아이디'
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black,fontSize:20),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.grey.shade300,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: '비밀번호'
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            //todo 로그인 버튼
             Material(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blue,
               child: InkWell(
                 borderRadius: BorderRadius.circular(10),
                 onTap: (){

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
