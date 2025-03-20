import 'package:flutter/material.dart';
import 'social_button.dart';
import 'Text_Field.dart';

class Androidlogin extends StatelessWidget {
  const Androidlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Colors.red.withOpacity(0.6),
                                  BlendMode.overlay,
                                ),
                                image: AssetImage('assets/background.jpg'),
                                fit: BoxFit.cover,
                                ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Adventure\nstarts here',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Create an account to join our\ncommunity!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/icon.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Hello! Welcome Back',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(height: 18),
                                CustomTextField(label: "Email", hint: "Enter your email"),
                                SizedBox(height: 12),
                                CustomTextField(label: "Password", hint: "********", isPassword: true),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(value: true, onChanged: (value) {}),
                                        Text("Remember me", style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text("Reset Password", style: TextStyle(fontSize: 12)),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFA481D8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 12),
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(fontSize: 14, color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    Expanded(child: Divider(color: Colors.black26)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                      child: Text("or", style: TextStyle(fontSize: 12)),
                                    ),
                                    Expanded(child: Divider(color: Colors.black26)),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SocialButton(imagePath: "assets/google.png"),
                                    SizedBox(width: 10),
                                    SocialButton(imagePath: "assets/facebook.png"),
                                    SizedBox(width: 10),
                                    SocialButton(imagePath: "assets/apple.png"),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?", style: TextStyle(fontSize: 12)),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text("Create Account", style: TextStyle(fontSize: 12)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
  }
}