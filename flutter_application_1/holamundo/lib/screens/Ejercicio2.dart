import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "texto",
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            //Icon(Icons.account_box_outlined),
            Text("Arriba"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Hola   "), Text("adios")]
              ),
            Icon(Icons.access_alarm),
          ],
        )

        /*            Text("Hola  "),
            Text("segundo  "),
            Text("tercero "), */
       
        //Center(child: Text("Hola Mundo")),

        /*Center(
          child: Text(
            "Hola Mundo",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue,fontSize: 25.4),
            ),
          ),
      */),
    );
  }
}

