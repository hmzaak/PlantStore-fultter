import 'package:flutter/material.dart';
import 'package:plantstore/ui/screens/login/login_page.dart';

// Widget builder function for TextFormFields.
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

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: Form(
        child: Column(
          children: [
            Wrap(
              runSpacing: 16,
              children: [
                buildTextFormField('Full Name', Icons.person),
                buildTextFormField('Email', Icons.email),
                buildTextFormField('Password', Icons.lock, obscureText: true),
                buildTextFormField('Confirm Password', Icons.lock,
                    obscureText: true),
                const Text(
                  'By signing in you agree to our Terms of use and privacy policy',
                  textAlign: TextAlign.center,
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
        padding: EdgeInsets.only(top: height * 0.14, bottom: height * 0.03),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: const [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff184A2C),
                ),
              ),
              Text('Create your new account'),
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

Widget signUpButtonSection(BuildContext context) => Padding(
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
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginPage.route);
                },
                child: const Text(
                  'Login',
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
