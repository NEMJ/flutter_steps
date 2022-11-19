import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/custom_button_widget.dart';

class StatesPage extends StatefulWidget {
  const StatesPage({ Key? key }) : super(key: key);

  @override
  State<StatesPage> createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {

  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for(int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) => Text(
                'Valor: $value',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            CustomButtonWidget(
              title: 'States',
              titleSize: 18,
              disable: false,
              onPressed: () => random(),
            ),
          ],
        ),
      ),
    );
  }
}