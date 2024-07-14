import 'package:flutter/material.dart';
import 'package:one/Sing/Sing.dart';
import 'package:one/Widgets/TextField.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LayoutBuilder _button(texto,Color cor,Function click) {
    return  LayoutBuilder(builder: (context, constraints) => 
              Container(
                width: constraints.maxWidth*0.6,
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                decoration:const BoxDecoration(),
                child:  
                FloatingActionButton(
                  onPressed: ()=>click(texto),
                  foregroundColor: Colors.white,
                  backgroundColor:  cor,
                  child:Text(texto),
                ),
              ),
            );
          
  }

   

  Future Entrar(params){
    return Navigator.push(context, MaterialPageRoute(builder: (context) => SingUp(),));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               LayoutBuilder(builder: (context, constraints) => 
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                    children: [
                    const Column(
                        children: [
                          Image(image: AssetImage("assets/flutter_50px.png")),
                          Text(
                            "Welcome",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            )),
                          Text(
                            "Bem vindo ao Flutter!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 16
                            )),
                        ],),
                        inputs("Nome",const Icon(Icons.account_circle)),
                        inputs("Senha",const Icon(Icons.password_rounded)),
                        _button("Entrar", const Color.fromRGBO(86, 205, 77, 1),Entrar),
                        _button("Criar conta", const Color.fromRGBO(255, 101, 105, 1),Entrar),
                        const Text(
                          "Bem vindo ao Flutter!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16
                          )
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          )
        ), 
      );
  }
}
