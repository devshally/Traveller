import 'package:flutter/material.dart';

class HeaderDescription extends StatelessWidget {
  final String description;
  const HeaderDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Image(
              image: AssetImage('assets/logo.png'),
              width: 50.0,
              height: 50.0,
            ),
            Text(
              'Traveller',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Align(
          alignment: Alignment(-1, 0),
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
          child: Text(
            description.toUpperCase(),
            style: const TextStyle(
              fontSize: 15.0,
              color: Color(0xFF0066FF),
            ),
          ),
        ),
      ],
    );
  }
}
