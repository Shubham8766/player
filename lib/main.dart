
import 'package:flutter/material.dart';
import 'package:ssg/player.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'player page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Page(title: 'new class'),
    );
  }
}
class Page extends StatefulWidget {
  const Page({Key? key, required this.title}) : super(key: key);
    final String title;
  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Video'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: (){
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context)=>
                 aPlayer("https://www.youtube.com/watch?v=GgmFC8y8q3k")
                 ));

              },
              child: Text(
                'player is here'
              ),
            ),
          )

        ],
      ),
    );
  }
}
