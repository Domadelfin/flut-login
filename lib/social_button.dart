import 'package:flutter/material.dart';

        class SocialButton extends StatelessWidget {
          final String imagePath;

          const SocialButton({super.key, required this.imagePath});

          @override
          Widget build(BuildContext context) {
            return Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  width: 18,
                  height: 18,
                ),
              ),
            );
          }
        }