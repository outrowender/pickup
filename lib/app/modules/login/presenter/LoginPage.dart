import 'package:flutter/material.dart';
import 'package:pickup/app/shared/widgets/MaterialFormWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        // /color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //campo de email
              MaterialFormWidgets.textField(
                label: "Email",
                inputType: TextInputType.emailAddress,
                controller: emailController,
                callback: () {},
              ),
              //campo de senha
              MaterialFormWidgets.textField(
                label: "Senha",
                inputType: TextInputType.text,
                isPassword: true,
                controller: passwordController,
                callback: () {},
              ),
              //campo de lembrar senha
              MaterialFormWidgets.checkbox('Lembrar senha'),
              //botao de login
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
