import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/sizing.dart';

class OtpForm extends StatefulWidget {
  final Function(String) otpText;
  const OtpForm({required this.otpText, super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final FocusNode otpFocus1 = FocusNode();
  final FocusNode otpFocus2 = FocusNode();
  final FocusNode otpFocus3 = FocusNode();
  final FocusNode otpFocus4 = FocusNode();
  final FocusNode otpFocus5 = FocusNode();
  final FocusNode otpFocus6 = FocusNode();

  final TextEditingController otpTextController1 = TextEditingController();
  final TextEditingController otpTextController2 = TextEditingController();
  final TextEditingController otpTextController3 = TextEditingController();
  final TextEditingController otpTextController4 = TextEditingController();
  final TextEditingController otpTextController5 = TextEditingController();
  TextEditingController otpTextController6 = TextEditingController();

  bool isButtonActive = true;

  @override
  void initState() {
    super.initState();

    otpTextController6 = TextEditingController();
    otpTextController6.addListener(() {
      final isButtonActive = otpTextController6.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActive;
      });
    });
  }

  passOtpText(String value) {
    String otp =
        '${otpTextController1.text}${otpTextController2.text}${otpTextController3.text}${otpTextController4.text}';
    widget.otpText(otp);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          const SizedBox(width: kDefaultPadding),
          Expanded(
            child: TextFormField(
              controller: otpTextController1,
              focusNode: otpFocus1,
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(),
                  counterText: ''),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.length == 1) {
                  otpFocus2.requestFocus();
                }
                passOtpText(value);
              },
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            child: TextFormField(
              controller: otpTextController2,
              focusNode: otpFocus2,
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(),
                  counterText: ''),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.length == 1) {
                  otpFocus3.requestFocus();
                } else {
                  otpFocus1.requestFocus();
                }
                passOtpText(value);
              },
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            child: TextFormField(
              controller: otpTextController3,
              focusNode: otpFocus3,
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(),
                  counterText: ''),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.length == 1) {
                  otpFocus4.requestFocus();
                } else {
                  otpFocus2.requestFocus();
                }
                passOtpText(value);
              },
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Expanded(
            child: TextFormField(
              controller: otpTextController4,
              focusNode: otpFocus4,
              autofocus: true,
              textAlign: TextAlign.center,
              maxLength: 1,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(),
                  counterText: ''),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.length == 1) {
                  otpFocus5.requestFocus();
                } else {
                  otpFocus3.requestFocus();
                }
                passOtpText(value);
              },
            ),
          ),
          const SizedBox(width: kDefaultPadding),
        ],
      ),
    );
  }
}
