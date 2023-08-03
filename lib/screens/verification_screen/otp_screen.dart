import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/sizing.dart';
import 'package:petsync_customer/screens/verification_screen/widgets/otp_form.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isButtonActive = true;
  String otpText = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Verify Phone Number'),
        ),
        body: Column(
          children: [
            const Spacer(),
            CircleAvatar(
              minRadius: 100,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.lock, size: 100),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            const Text(
              'We send you a code to verify',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const Text(
              'your mobile number',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(height: kDefaultPadding),
            const Text('Enter your OTP code here'),
            // SizedBox(height: kDefaultPadding * 4),
            OtpForm(otpText: (value) {
              setState(() => otpText = value);
            }),
            const SizedBox(height: kDefaultPadding * 2),
            const Text('I didn\'t receive a code!'),
            TextButton(onPressed: () {}, child: const Text('Resend code')),
            const Spacer(),
            Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        disabledForegroundColor: Colors.white.withOpacity(0.38),
                        disabledBackgroundColor:
                            Colors.white.withOpacity(0.12)),
                    onPressed: () {
                      if (otpText.length == 4) {
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      }
                    },
                    child: const Text('Verify Now')))
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
