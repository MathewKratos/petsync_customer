import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => NumberScreenState();
}

class NumberScreenState extends State<NumberScreen> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/temp/phone.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 400,
              ),
              child: const Align(
                alignment: Alignment(-0.6, -0.5),
                child: Text(
                  'Enter Your Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 80),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  maxLength: 10,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      counterText: '',
                      hintText: 'Enter Your Phone Number'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Your Phone Number';
                    } else if (!RegExp(r'^\+?[6-9]\d{9}$').hasMatch(value)) {
                      return 'Enter Valid Phone Number';
                    } else {
                      Navigator.pushNamed(context, '/otp');
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        disabledForegroundColor: Colors.white.withOpacity(0.38),
                        disabledBackgroundColor:
                            Colors.white.withOpacity(0.12)),
                    onPressed: () {
                      _formKey.currentState?.validate();
                    },
                    child: const Text('Verify Now'))),
          ],
        ),
      )),
      resizeToAvoidBottomInset: false,
    );
  }
}
