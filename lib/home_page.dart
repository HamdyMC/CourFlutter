import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = "";
  var prenom = "";
  var nom = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('EXO2: HELLO FORM'),
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
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     mainAxisSize: MainAxisSize.max,
                //     children: [
                //       ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: Colors.black,
                //             foregroundColor: Colors.white,
                //           ),
                //           onPressed: () {
                //             setState(() {
                //               text = "AMADOU";
                //             });
                //           },
                //           child: Text('AMADOU')),
                //       ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: Colors.black,
                //             foregroundColor: Colors.white,
                //           ),
                //           onPressed: () {
                //             setState(() {
                //               text = "BEBEYOO";
                //             });
                //           },
                //           child: Text('BEBEYOO')),
                //       ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: Colors.black,
                //             foregroundColor: Colors.white,
                //           ),
                //           onPressed: () {
                //             setState(() {
                //               text = "AMIGO";
                //             });
                //           },
                //           child: Text('AMIGO'))
                //     ]),
                Form(
                    key: _formKey,
                    child: Column(children: [
                      TextFormField(
                          validator: (value) {
                            if (value == "") {
                              return 'ENTREZ UN PRENOM de ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text.rich(TextSpan(children: <InlineSpan>[
                                WidgetSpan(
                                  child: Text(
                                    'PRENOM',
                                  ),
                                ),
                                WidgetSpan(
                                  child: Text(
                                    '*',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ]))),
                          onChanged: (value) {
                            prenom = value;
                          }),

                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          validator: (value) {
                            if (value == "") {
                              return 'ENTREZ UN NOM';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text.rich(TextSpan(children: <InlineSpan>[
                                WidgetSpan(
                                  child: Text(
                                    'NOM',
                                  ),
                                ),
                                WidgetSpan(
                                  child: Text(
                                    '*',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ]))),
                          onChanged: (value) {
                            nom = value;
                          }),
                      // ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    text = prenom + " " + nom;
                                    setState(() {
                                      prenom = "";
                                      nom = "";
                                    });
                                  });
                                }
                              },
                              child: Text('Submit')))
                    ]))
              ])),
          // appBar: AppBar(
          // ),
          // backgroundColor: Colors.cyan,
        )));
  }
}
