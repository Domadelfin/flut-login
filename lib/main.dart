import 'package:flutter/material.dart';

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
                  ? Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                  Color.fromARGB(255, 255, 0, 43).withOpacity(0.6),
                                  BlendMode.overlay,
                                ),
                                image: AssetImage('assets/background.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Adventure\nstarts here',
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 15),
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 25),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                  buildTextField(label: "Email", hint: "Enter your email"),
                                  SizedBox(height: 12),
                                  buildTextField(label: "Password", hint: "********", isPassword: true),
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
                                      buildSocialButton("assets/google.png"),
                                      SizedBox(width: 10),
                                      buildSocialButton("assets/facebook.png"),
                                      SizedBox(width: 10),
                                      buildSocialButton("assets/apple.png"),
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
                          ),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
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
                                buildTextField(label: "Email", hint: "Enter your email"),
                                SizedBox(height: 12),
                                buildTextField(label: "Password", hint: "********", isPassword: true),
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
                                    buildSocialButton("assets/google.png"),
                                    SizedBox(width: 10),
                                    buildSocialButton("assets/facebook.png"),
                                    SizedBox(width: 10),
                                    buildSocialButton("assets/apple.png"),
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
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField({required String label, required String hint, bool isPassword = false}) {
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

  Widget buildSocialButton(String imagePath) {
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
