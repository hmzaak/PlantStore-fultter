import 'package:flutter/material.dart';
import 'package:plantstore/ui/screens/homepage/home_page.dart';
import 'package:plantstore/ui/screens/signup/signup_page.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  Widget buildTextFormField(
    String hintText,
    IconData icon, {
    bool obscureText = false,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff184A2C),
        ),
        filled: true,
        prefixIcon: Icon(
          icon,
          color: const Color(0xff184A2C),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscureText,
      cursorColor: const Color(0xff184A2C),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Form(
        child: Column(
          children: [
            Wrap(
              runSpacing: 16,
              children: [
                buildTextFormField('Email', Icons.email),
                buildTextFormField('Password', Icons.lock, obscureText: true),
                Row(
                  children: const [
                    Text(
                      'Remember me',
                      style: TextStyle(
                        color: Color(0xff184A2C),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Forgor Password?',
                      style: TextStyle(
                        color: Color(0xff184A2C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget topTextSection(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.only(top: height * 0.11, bottom: height * 0.03),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: const [
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff184A2C),
                ),
              ),
              Text('Login to your account'),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: SizedBox(
          height: height * 0.1,
          child: Image.asset('assets/leaf.png'),
        ),
      ),
    ],
  );
}

Widget loginButtonSection(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
                backgroundColor: const Color(0xff184A2C),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomePage.route);
              },
              child: const Text('Log In'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(SignUpPage.route);
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff184A2C),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
