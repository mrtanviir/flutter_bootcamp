import 'package:flutter/material.dart';

class FormValid extends StatefulWidget {
  const FormValid({super.key});

  @override
  State<FormValid> createState() => _FormValidState();
}

class _FormValidState extends State<FormValid> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void _login() {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SuccesFormValidation(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/flutter.png"),
                          ),
                          const Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Form must not be empty";
                          } else if (!value.contains("@")) {
                            return "Not a valid email";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Form must not be empty";
                          } else if (value.length <= 6) {
                            return "Password must be 6 characters or more";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: _login,
                        child: Container(
                          alignment: Alignment.center,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccesFormValidation extends StatelessWidget {
  const SuccesFormValidation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          Center(
            child: const Text(
              "Form Validation Success",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
