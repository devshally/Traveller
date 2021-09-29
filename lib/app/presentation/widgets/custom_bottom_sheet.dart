import 'package:flutter/material.dart';
import 'package:lawrenceprice_test/app/presentation/screens/dashboard.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FractionallySizedBox(
            widthFactor: 0.45,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Container(
                height: 4.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(2.5)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Image(
                    image: AssetImage('assets/confetti.png'),
                  ),
                ),
                const Text(
                  'Yaah we got\nyour Response',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Image(
                    image: AssetImage('assets/Successful.png'),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Dashboard())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Goto Dashboard',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF0066FF),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Color(0xFF0066FF),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
