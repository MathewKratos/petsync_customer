import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => NumberScreenState();
}

class NumberScreenState extends State<NumberScreen> {
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
              margin: const EdgeInsets.only(left: 30, right: 30, top: 100),
              child: TextFormField(
                maxLength: 10,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    counterText: '',
                    hintText: 'Enter Your Phone Number'),
                keyboardType: TextInputType.number,
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
                    onPressed: () {},
                    child: const Text('Verify Now'))),
          ],
        ),
      )),
      resizeToAvoidBottomInset: false,
    );
  }
}
