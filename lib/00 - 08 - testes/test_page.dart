import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              'Olá mundo!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 80,
              width: 150,
              child: const Center(
                child: Text(
                  'Vermelho',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              height: 80,
              width: 150,
              child: const Center(
                child: Text(
                  'Violeta',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}