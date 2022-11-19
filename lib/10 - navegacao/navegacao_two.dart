import 'package:flutter/material.dart';

class NavegacaoTwo extends StatelessWidget {
  const NavegacaoTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('Navegar para a primeira página $args'),
          onPressed: () {
            if(Navigator.of(context).canPop()) { // Verifica se existe alguma página anterior no contexto
              Navigator.of(context).pop('Resultado');
            }
          },
        ),
      ),
    );
  }
}