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

// HomePage를 StatefulWidget으로 변경
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => const Popup(), // Popup을 호출
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          actions: [
            Icon(Icons.notifications,size: 30,),
          ]
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(padding: EdgeInsets.all(10)),
                    Text('안녕하세요,',style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 40
                    ),),
                    Text('송죽 파도수산입니다.',style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 40
                    ),)

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Center(
                child: Container(

                  width: 400, height: 200,
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

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Padding(padding: EdgeInsets.all(15)),
                                  Text('안녕하세요,',style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 25
                                  ),),
                                  Text('송죽 파도수산입니다.',style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 25
                                  ),)

                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('회원가입',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.blue
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.all(7)),
                                  OutlinedButton(
                                      onPressed: () {},
                                      child: Text('로그인',style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      )
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        height: 200,width: 100,
                        color: Colors.blue,
                        child: Text('사진'),
                      )
                    ],
                  ),

                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                padding: EdgeInsets.all(15),
                child: Text('추천메뉴',style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25
                ),),
              ),
              Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("assets/susi.jpg"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('광어+우럭(중)',style: TextStyle(
                                fontWeight: FontWeight.bold,

                              ),),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("assets/susi.jpg"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('광어+우럭(대)',style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("#"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('도다리세꼬시(중)',style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("assets/susi1.jpg"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('방어(소)',style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("assets/susi1.jpg"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('방어(중)',style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("assets/susi1.jpg"),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              child: Text('방어(대)',style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(20)),
              Center(
                child: Container(

                  width: 400, height: 200,
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
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Padding(padding: EdgeInsets.all(15)),
                                  Text('NEWS',style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 25
                                  ),),
                                  Text('겨울 방어 개시',style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 25
                                  ),)

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,width: 100,
                        color: Colors.blue,
                        child: Text('사진'),
                      )
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderMain(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.food_bank, color: Colors.blue),
                      iconSize: 35,
                    ),
                    Text(
                      'ORDER',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartMain(),
                          ),
                        );

                      },
                      icon: const Icon(Icons.shopping_cart, color: Colors.blue),
                      iconSize: 35,
                    ),
                    Text(
                      'CART',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddMain(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add, color: Colors.blue),
                      iconSize: 35,
                    ),
                    Text(
                      'Q&A',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class OrderMain extends StatelessWidget {
  const OrderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
       actions: [Icon(Icons.search,size: 40,color: Colors.blue,)],
      ),
      body:
      Container(
        color: Colors.white,
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text('인기 메뉴', style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue,
              ),),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200, width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            height: 200, width: 200,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/susi.jpg"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(25)),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('광어+우럭(중)',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('₩ 45,000',style: TextStyle(fontSize: 20),),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,

                                  child:
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.add_shopping_cart,size: 40,color: Colors.blue,),
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
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200, width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 200, width: 200,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/susi.jpg"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(25)),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('광어+우럭(대)',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('₩ 55,000',style: TextStyle(fontSize: 20),),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,

                                  child:
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.add_shopping_cart,size: 40,color: Colors.blue,),
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
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200, width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 200, width: 200,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(25)),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('도다리세꼬시',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('₩ 50,000',style: TextStyle(fontSize: 20),),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,

                                  child:
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.add_shopping_cart,size: 40,color: Colors.blue,),
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
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200, width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 200, width: 200,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(25)),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('물회(대)',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,
                                  child: Text('₩ 42,000',style: TextStyle(fontSize: 20),),

                                ),
                              ),
                              Expanded(
                                flex:1,
                                child:Container(
                                  width: double.infinity,

                                  child:
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.add_shopping_cart,size: 40,color: Colors.blue,),
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
              ],
            ),

          ],
        ),
    ),
      ),
    );
  }
}
class CartMain extends StatelessWidget {
  const CartMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Text('장바구니',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue
        ),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 350,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Container(
              height: 200,width: 200,
             alignment: Alignment.center,
             decoration: BoxDecoration(
                 color: Colors.blue,
               borderRadius: BorderRadius.circular(10.0)
             ),
              child: Column(
                children: [
                  Container(
                    child:Image.asset('assets/susi1.jpg',
                      height: 150,
                      fit: BoxFit. fitWidth,
                    ),
                  ),
                  Container(
                    child: Text('겨울방어 시작',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white ),),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(100, 50)
              ),
              onPressed: () {
                Navigator.of(context).pop(); // 팝업 닫기
              },
              child: const Text("닫기",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
void myDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("팝업이다."),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            )
          ],
        ),
      );
    },
  );
}
class AddMain extends StatelessWidget {
  const AddMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.white,
      ),
      body:Container(
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
        child:
        Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      child: Text('Q&A',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue),),
                    ),
                  ],
                ),
              ),
              Container(

              ),
            ],
          ),
        ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: Colors.white,
        child: Container(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 45,
            child: Icon(
              Icons.create,size: 40,color: Colors.white,
            ),
          ),
        ),
      )
    );
  }
}
