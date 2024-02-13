import 'package:flutter/material.dart';

class ScreenMyHome extends StatefulWidget {
  const ScreenMyHome({super.key});

  @override
  State<ScreenMyHome> createState() => _ScreenMyHomeState();
}

class _ScreenMyHomeState extends State<ScreenMyHome> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Test"),
      ),
      body: Container(
        child: Center(
          child: Text("$count",style: TextStyle(fontSize: 25),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count = count + 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}