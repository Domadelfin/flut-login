import 'package:flutter/material.dart';

  class CustomTextField extends StatelessWidget {
    final String label;
    final String hint;
    final bool isPassword;

    const CustomTextField({
      Key? key,
      required this.label,
      required this.hint,
      this.isPassword = false,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Container(
            height: 40,
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 12,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
        ],
      );
    }
  }