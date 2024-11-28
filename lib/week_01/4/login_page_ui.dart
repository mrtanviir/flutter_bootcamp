import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/flutter.png")),
                        const Text(
                          "Flutter",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Password", border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 52,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Don't have any account or sign up",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
