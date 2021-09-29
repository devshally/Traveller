import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatelessWidget {
  final String description;
  final VoidCallback onTap;
  const CustomDateTimePicker({
    Key? key,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              width: 1.0,
              color: Colors.grey,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(description),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
