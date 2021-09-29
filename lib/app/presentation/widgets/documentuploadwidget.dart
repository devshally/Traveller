import 'package:flutter/material.dart';

class DocumentUploadWidget extends StatelessWidget {
  final String documentName;
  final VoidCallback onTap;
  const DocumentUploadWidget({
    Key? key,
    required this.documentName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          documentName,
          style: const TextStyle(
            fontSize: 16.0,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        InkWell(
          onTap: onTap,
          child: const Text(
            'Attach File',
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0xFF0066FF),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
