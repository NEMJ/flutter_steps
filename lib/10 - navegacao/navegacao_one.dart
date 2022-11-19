import 'package:flutter/material.dart';

class NavegacaoOne extends StatelessWidget {
  const NavegacaoOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.cyan),
          child: const Text('Navegar para a segunda página'),
          onPressed: () {
            Navigator.of(context)
              .pushReplacementNamed('/twoPage', arguments: 'ArgsTest') // A página é retirada da pilha de contexto
              // .pushNamed('/twoPage', arguments: 'ArgsTest') // A página fica na pilha do contexto
              .then((value) => print(value));
          },
        ),
      ),
    );
  }
}