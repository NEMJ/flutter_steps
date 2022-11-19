import 'package:flutter/material.dart';
import 'package:primeiros_passos/11 - custom widget/widgets/custom_button_widget.dart';

class CustomWidgetPage extends StatefulWidget {
  const CustomWidgetPage({ Key? key }) : super(key: key);

  @override
  State<CustomWidgetPage> createState() => _CustomWidgetPageState();
}

class _CustomWidgetPageState extends State<CustomWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          title: 'Custom BTN',
          titleSize: 18,
          disable: false,
          onPressed: () {},
        ),
      ),
    );
  }
}