import 'package:flutter/material.dart';
import 'package:lawrenceprice_test/app/presentation/screens/onboarding1.dart';
import 'package:lawrenceprice_test/app/presentation/screens/onboarding2.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late PageController _pageController;
  int currentIndex = 0;
  List<Widget> widgetPages = const [
    OnboardingScreen1(),
    OnboardingScreen2(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: widgetPages,
          ),
          Align(
            alignment: const Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widgetPages.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
