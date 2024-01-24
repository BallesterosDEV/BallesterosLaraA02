import 'package:ballesteroslaraa02/widgets/btn_contador.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorApp(),
    );
  }
}

class ContadorApp extends StatefulWidget {
  @override
  _ContadorAppState createState() => _ContadorAppState();
}

class _ContadorAppState extends State<ContadorApp> {
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador++;
    });
  }

  void resetearContador() {
    setState(() {
      contador = 0;
    });
  }

  void decrementarContador() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "$contador",
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
                  BotonContador(
                    label: "+",
                    onPressed: () {
                      incrementarContador();
                    },
                  ),
                  BotonContador(
                    label: "RESET",
                    onPressed: () {
                      resetearContador();
                    },
                  ),
                  BotonContador(
                    label: "-",
                    onPressed: () {
                      decrementarContador();
                    },
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
    );
  }
}