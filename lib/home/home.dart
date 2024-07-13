import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Card _cards(params) {
    return Card(
    child: Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(params),
        fit: BoxFit.fill)
      ),
    ));
  }



    Container _inputs(params) {
    return  Container(
            height: 50,
            padding: EdgeInsets.only(left: 40 , right: 40),
            margin: EdgeInsets.only(top: 20,bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: params,
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                  )
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1
                  )
                )
              ),
            ),
         );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: _cards("assets/top.png"),
              ),
              Align(
                child: Container(
                  alignment: Alignment.center,
                  height: 400,
                  child: Column(
                  children: [
                   const Column(
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Color.fromRGBO(63, 72, 204, 1),
                            fontSize: 28
                          )),
                        Text(
                          "Bem vindo ao Flutter!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 20
                          )),
                      ],),
                      _inputs("Nome"),
                      _inputs("Senha"),
                      FloatingActionButton(
                        onPressed: ()=>{},
                        backgroundColor:  Color.fromRGBO(63, 72, 204, 1),
                        child:Text("Entrar"),
                      ),
                   ],
                  ),
                ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _cards("assets/bottom.png"),
              )
            ],
          )
        ), 
      );
  }
}
