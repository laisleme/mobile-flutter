import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: metodoHome(),
    );
  }
    metodoHome(){
      return Scaffold(
        appBar: AppBar(
          title: Text("Meu Perfil"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Meu nome é Lais Lemes tenho 19 anos essa é a minha primeira faculade e tenho planos em seguir na área de tecnologia, mas não tenho certeza da especialidade.",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
               fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed,
  
            ),
          )
        ),
        ),

        drawer: Container(
          color: Colors.blue
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},),
        );
    
  }
}
