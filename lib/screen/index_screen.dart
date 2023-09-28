import 'package:flutter/material.dart';


class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {

  double imgSize=50;
  String currentCategory='플러터';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('코딩 일정 관리',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20,),

            //todo 상단 프로필
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('안녕!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('나의 코딩 공부 리스트!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(imgSize/2),
                  child: Image.network(
                      'https://img.etoday.co.kr/pto_db/2021/11/600/20211112172542_1685895_654_654.jpg',
                      width: imgSize,
                      height: imgSize,
                      fit: BoxFit.cover,
                  ),
                )
              ],
            ),

            SizedBox(height: 20,),
            //todo 카테고리 버튼
            Row(
              children: [
                MyCategoryButton(
                  text: '플러터',
                  isSelected: currentCategory=='플러터' ? true : false,
                  onPressed: (){
                    setState(() {
                      currentCategory='플러터';
                      imgSize=50;
                    });
                  },
                ),
                MyCategoryButton(
                  text: '백엔드',
                  isSelected: currentCategory=='백엔드' ? true : false,
                  onPressed: (){
                    setState(() {
                      currentCategory='백엔드';
                      imgSize=50;
                    });
                  },
                ),
                MyCategoryButton(
                  text: '서버구축',
                  isSelected: currentCategory=='서버구축' ? true : false,
                  onPressed: (){
                    setState(() {
                      currentCategory='서버구축';
                      imgSize=50;
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 30,),
            //todo 공부 리스트
            Expanded(
              child: Scrollbar(
                thickness: 10,
                isAlwaysShown: true,
                interactive: true,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),
                      buildTodoBox(),

                    ],
                  ),
                ),
              ),
            )
            

          ],
        ),
      ),
    );
  }
}


Widget buildTodoBox(){

  TextStyle style1 = TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold);
  TextStyle style2 = TextStyle(color: Colors.black87,fontSize: 14);


  return Container(
    width: double.infinity,
    height: 70,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('플러터',style: style1,),
            Text('플러터 setState 함수 알아보기',style: style2,)
          ],
        ),
        OutlinedButton(
            onPressed: (){},
            child: Text('완료')
        )
      ],
    ),
  );
}



class MyCategoryButton extends StatelessWidget {

  String text;
  bool isSelected;
  Function onPressed;

  MyCategoryButton({
    required this.text,
    required this.isSelected,
    required this.onPressed
  });


  @override
  Widget build(BuildContext context) {

    // Color bgColor;
    // Color textColor;
    //
    // if(isSelected){
    //   //선택 됨.
    //   bgColor=Colors.blue;
    //   textColor=Colors.white;
    // }else{
    //   //선택 안됨.
    //   bgColor=Colors.white;
    //   textColor=Colors.blue;
    // }


    return GestureDetector(
      onTap: (){
        onPressed();

      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.blue),
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Colors.blue : Colors.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
        child: Text(text,style: TextStyle(color: isSelected ? Colors.white : Colors.blue,fontWeight: FontWeight.bold),),
      ),
    );
  }
}

