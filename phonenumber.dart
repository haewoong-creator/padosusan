import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
        ),
        body:SizedBox(
          child:ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
                title: Text('홍길동'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
                title: Text('홍길동'),
              )
            ],
          ),
        ),
        bottomNavigationBar: Bottom()
      ),
    );
  }
}
class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.person)
        ],
      ),
    );
  }
}


