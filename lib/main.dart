import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: null,
          body: SafeArea(
              child: Column(
            children: <Widget>[
              Container(
                child:
                    Stack(alignment: Alignment(-10.0, -1.0), children: <Widget>[
                  Container(
                    child: Image.asset('assets/mmm.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 0.0),
                    child: Text(
                      'Sports Activity Platform',
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        color: Color.fromARGB(255, 109, 120, 159),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: const <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'user Name',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xFF403AE),
                          ))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xFF403AE),
                          ))),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(right: 80.0, left: 20.0),
                    child: Text(
                      'Sign-in',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E354E),
                          fontSize: 30.0),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35.0,
                      right: 10.0,
                      left: 50.0,
                    ),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF4073aE),
                      child: Icon(Icons.arrow_forward_ios),
                      onPressed: (() => null),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: const InkWell(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Color(0xFF4073AE),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    Container(
                      child: const InkWell(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Color(0xFF4073AE),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }
}
