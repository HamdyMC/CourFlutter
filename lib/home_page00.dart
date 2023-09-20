import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

var text = "";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('EXO1: COUCOU HELLO'),
          backgroundColor: Colors.cyan[900],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: (Column(
              // mainAxisSize: MainAxisSize
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                // color: Colors.cyan[900],
                                )),
                        child: Center(
                            child: Text(
                          "HELLO $text",
                        )),
                        width: 200,
                        height: 50,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              text = "";
                            });
                          },
                          child: Text('RESET'))
                      // ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              text = "AMADOU";
                            });
                          },
                          child: Text('AMADOU')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              text = "BEBEYOO";
                            });
                          },
                          child: Text('BEBEYOO')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              text = "AMIGO";
                            });
                          },
                          child: Text('AMIGO'))
                    ]),
              ])),
          // appBar: AppBar(
          // ),
          // backgroundColor: Colors.cyan,
        )));
  }
}
