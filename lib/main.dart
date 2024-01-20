import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900], 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                child: Text(
                  "CONTADOR",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                alignment: Alignment.center,
                child: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 200.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          color: Colors.white, 
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text(
                        "CONTADOR",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          color: Colors.white, 
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, 
                      ),
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          color: Colors.white, 
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.center,
                child: Text(
                  "By Pablo Ballesteros",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w100,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}