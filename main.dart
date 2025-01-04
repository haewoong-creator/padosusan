
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(//구글이 제공하는 Material테마 이용할 수 있음,아이폰 기본앱은 cupertino~~
      home: Scaffold(//상중하로 나눠줌
        appBar: AppBar(
         actions: [Icon(Icons.search),
         Padding(
           padding: const EdgeInsets.only(left:16.0),
           child: Icon(Icons.menu),
         ),Padding(
           padding: const EdgeInsets.only(left:16.0),
           child: Icon(Icons.notifications),
         ),],
          title: Text('정자동'),
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: 200, width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
              flex: 1,
              child: Container(
                child: Image.asset('assets/dang.JPG',
                height: 200,
                fit: BoxFit.fill,
                ),
                height: 200, width: 200,

              ),
              ),
              Expanded(
                flex: 2,
              child:Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                  flex:2,
                    child:Container(
                      width: double.infinity,
                      child: Text('캐논 DSLR 100D(단렌즈, 충전기 16기가SD 포함)',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                      ),

                    ),
        ),
        Expanded(
            flex:1,
            child:Container(
              width: double.infinity,
              child: Text('율전동 • 끌올 10분전',
              style: TextStyle(color: Colors.grey),),
    ),
    ),
    Expanded(
    flex:1,
    child:Container(
      width: double.infinity,
      child: Text('30,0000원'),

    ),
    ),
                Expanded(
                    flex:1,
                    child:Container(
                      width: double.infinity,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border),
                    Text('4')
                  ],

                ),

              ),
        ),
                  ],
                ),
              ),
              ),
            ],
          ),


        ),

        ),
      );
  }
}

