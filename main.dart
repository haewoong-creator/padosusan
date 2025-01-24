import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
          leading: Builder(

            builder: (context){
              return IconButton(
              icon: Icon(Icons.menu,size: 50,),
              onPressed: (){
                Scaffold.of(context).openDrawer();
          },
              );
            },
          ),
          title: Text('파도수산',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30
          ),),
          centerTitle: true,

      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(70),
          children: [
            Container(
              height: 100,width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home,size: 30,),
                  Padding(padding: EdgeInsets.all(10)),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('홈페이지',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),

              ),

                ],
              ),

            ),
            Container(
              height: 100,width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.list,size: 30,),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
                    child: Text('주문목록',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),

                  ),
                ],
              ),
            ),
            Container(
              height: 100,width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.person,size: 30,),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ),
                      );
                    },
                    child: Text('회원목록',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,width: double.infinity,
        child: Column(

          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              alignment: Alignment.center,
              height: 150,width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius:BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ),
                        );
                      }, icon: Icon(Icons.shopping_cart,size: 40,)),
                  ),
                  Expanded(
                    flex: 2,
                    child:Text('    주문이 없습니다',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Text('주문목록',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30
        ),),
        centerTitle: true,
      ),
  body: Container(
    color: Colors.white,
    width: double.infinity,height: double.infinity,
  ),
    );
  }
}
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Text('회원목록',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30
        ),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,height: double.infinity,
      ),
    );
  }
}


