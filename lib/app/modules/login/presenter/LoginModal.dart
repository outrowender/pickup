import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pickup/styles/widgets/button/LargeButton.dart';

class LoginModal extends StatefulWidget {
  @override
  _LoginModalState createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logstore-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      "assets/icons/logo-nexp.svg",
                      color: Colors.black,
                      height: 80,
                    ),
                  ),
                  Text(
                    'Entregue com 1-clique com o ENDEX',
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: LargeButton(
                  text: 'Login',
                  backgroundColor: Colors.black,
                  onPressed: () => {
                     Modular.to.navigate('/login')
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
