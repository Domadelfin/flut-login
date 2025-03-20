import 'package:flutter/material.dart';
import 'package:login_page/pclogin.dart';
import 'androidlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(color: Color(0xFFA481D8)),
              ),
              if (screenWidth > 600)
                Expanded(
                  child: Container(
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.6),
                        BlendMode.lighten,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/wbackground.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Center(
            child: Container(
              width: screenWidth > 600 ? 800 : screenWidth * 0.9,
              height: screenWidth > 600 ? 550 : null,
              padding: EdgeInsets.all(screenWidth > 600 ? 0 : 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: screenWidth > 600
                  ? pcLogin()
                  : Androidlogin(),
            ),
          ),
        ],
      ),
    );
  }
}