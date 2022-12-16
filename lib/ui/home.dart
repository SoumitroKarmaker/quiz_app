import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [TextButton(onPressed: () {}, child: Text('skip'))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
