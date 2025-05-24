import 'package:broker_desk/constants.dart';
import 'package:broker_desk/presentation/pages/auth_page/widgets/text_field_widget.dart';
import 'package:broker_desk/presentation/pages/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          SizedBox(height: defaultPadding),
          TextFieldWidget(labelText: 'Введите логин'),
          TextFieldWidget(labelText: 'Введите пароль', obscure: true),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen(),
                  ),
                );
              },
              child: Text('Войти'),
            ),
          ),
        ],
      ),
    );
  }
}
