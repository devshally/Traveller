import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            Align(
              alignment: Alignment(-0.5, -0.1),
              child: Text(
                'Freedom \nBegins here',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-1.2, 0.2),
              child: Image(image: AssetImage('assets/Vector 3.png')),
            ),
          ],
        ),
      ),
    );
  }
}
