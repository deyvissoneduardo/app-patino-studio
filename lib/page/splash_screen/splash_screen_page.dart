import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/shared/constantes.dart';

import 'controller/splash_screen_controller.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState
    extends ModularState<SplashScreenPage, SplashScreenController> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * controller.width,
              height: MediaQuery.of(context).size.height * controller.height,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(height: 8),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
