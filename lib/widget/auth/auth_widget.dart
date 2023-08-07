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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 221, 219, 219),
            border: InputBorder.none,
            labelText: 'Email',
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Password',
          style: textStyle,
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 221, 219, 219),
            border: InputBorder.none,
            labelText: 'Password',
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Text('Remember me'),
            TextButton(
              onPressed: () {},
              child: Text('Forgot password?'),
            ),
          ],
        ),
        Row(
          children: [
            Text('Don\'t have an account?'),
            TextButton(onPressed: () {}, child: Text('Sign up'))
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Sign in'),
        )
      ],
    );
  }
}
