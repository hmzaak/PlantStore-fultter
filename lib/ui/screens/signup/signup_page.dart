import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textSection,
              registerFormSection,
              const SizedBox(height: 220),
              signUpButtonSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget textSection = Padding(
  padding: const EdgeInsets.only(
    top: 120,
    bottom: 30,
  ),
  child: Column(
    children: const [
      Text(
        'Register',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text('Create your new account'),
    ],
  ),
);

Form registerFormSection = Form(
  child: Column(
    children: [
      Wrap(
        runSpacing: 16,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Full name',
              filled: true,
              prefixIcon: const Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              filled: true,
              prefixIcon: const Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              prefixIcon: const Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              filled: true,
              prefixIcon: const Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const Text(
            'By signing in you agree to our Terms of use and privacy policy',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ],
  ),
);

Widget signUpButtonSection = Column(
  children: [
    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
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
          onPressed: () {},
          child: const Text('Login'),
        )
      ],
    ),
  ],
);
