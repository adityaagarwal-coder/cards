import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Card(
            color: Colors.pink,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width/1.05,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Card(
                    color: Colors.pink,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.1,
                      color: Colors.green,
                    )),
              ],
            ),
            Center(
                child: Container(
              height: 50,
              width: 200,
              color: Colors.grey,
            ))
          ]),
        ],
      )),
    );
  }
}
