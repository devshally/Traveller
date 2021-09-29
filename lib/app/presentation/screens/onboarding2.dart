import 'package:flutter/material.dart';
import 'package:lawrenceprice_test/app/presentation/screens/registration_screen.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0066FF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => RegistrationScreen())),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                  'Signup',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xFF0066FF,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
