import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("You"),
              Text("Enemy"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 16),
              Expanded(
                child: ColoredBox(
                  color: Colors.tealAccent[100]!,
                  child: Column(
                    children: [
                      Text("Defend".toUpperCase()),
                      SizedBox(height: 13),
                      BodyPartButton(text: "Head"),
                      SizedBox(height: 14),
                      BodyPartButton(text: "Torso"),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: ColoredBox(
                  color: Colors.deepOrangeAccent[100]!,
                  child: Column(
                    children: [
                      Text("Attack".toUpperCase()),
                      SizedBox(height: 13),
                      BodyPartButton(text: "Head"),
                      SizedBox(height: 14),
                      BodyPartButton(text: "Torso"),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ColoredBox(
                    color: Color.fromRGBO(0, 0, 0, 0.87),
                    child: Center(
                      child: Text(
                        "Go".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}

class BodyPartButton extends StatelessWidget {
  final String text;

  const BodyPartButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ColoredBox(
        color: Colors.black26,
        child: Center(
          child: Text(text.toUpperCase()),
        ),
      ),
    );
  }
}
