import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pickup/styles/widgets/button/LargeButton.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: () => {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
