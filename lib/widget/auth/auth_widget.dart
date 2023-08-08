import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Movie'),
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            Text('Please enter your email & password to sign in.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                )),
            SizedBox(height: 30),
            _FormWidget(),
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  final textStyleRed = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.red,
  );

  final dividerLine = const Divider(
    height: 20,
    thickness: 1,
    indent: 0,
    endIndent: 0,
    color: Color.fromARGB(255, 221, 219, 219),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 221, 219, 219),
            border: InputBorder.none,
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 221, 219, 219),
            border: InputBorder.none,
            labelText: 'Password',
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Remember me', style: textStyle),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: textStyleRed,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        dividerLine,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sign up', style: textStyleRed),
            )
          ],
        ),
        const SizedBox(height: 200),
        dividerLine,
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 160, vertical: 5),
                ),
                //foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text(
                'Sign in',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
