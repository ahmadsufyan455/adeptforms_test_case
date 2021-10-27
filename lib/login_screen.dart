import 'package:adeptforms_test_case/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('images/wave.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 171, left: 56),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/logo.png',
                          width: 110,
                          height: 28,
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Text(
                          'Welcome Back!',
                          style:
                              TextStyle(fontSize: 24, fontFamily: 'NunitoBold'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 53, right: 54),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 53, right: 54),
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 54),
                child: Row(
                  children: [
                    Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'NunitoRegular',
                          color: Color(0xFF898B96)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 53),
                child: Row(
                  children: [
                    Image.asset(
                      'images/finger.png',
                      width: 42,
                      height: 42,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DashboardScreen();
                            },
                          ),
                        );
                      },
                      child: const Text('Sign In'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF383838),
                        textStyle: const TextStyle(
                            fontSize: 14, fontFamily: 'NunitoBold'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        fixedSize: const Size(232, 50),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'NunitoBold',
                      ),
                    ),
                    Text(
                      'Forgot Passwords',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'NunitoBold',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
