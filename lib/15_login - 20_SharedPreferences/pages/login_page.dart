import 'package:flutter/material.dart';
import '../components/login/custom_login_button_component.dart';
import '../controllers/login_controller.dart';
import '../widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
              CustomTextFieldWidget(
                label: 'Login',
                onChanged: _controller.setLogin,
              ),
              CustomTextFieldWidget(
                label: 'Senha',
                onChanged: _controller.setPass,
                obscureText: true,
              ),
              const SizedBox(height: 15),
              CustomLoginButtonComponent(loginController: _controller),
            ],
          ),
        ),
      ),
    );
  }
}