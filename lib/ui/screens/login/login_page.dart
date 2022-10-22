import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/loginpage_widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: ImageClipper(),
              child: Image.asset('assets/leaves.jpg'),
            ),
            topTextSection(context),
            const LoginForm(),
            SizedBox(height: height * 0.15),
            loginButtonSection(context),
          ],
        ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 30);
    // first controlling poing
    var firstStart = Offset(size.width / 2.5, size.height);
    var firstEnd = Offset(size.width, size.height - 100);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
