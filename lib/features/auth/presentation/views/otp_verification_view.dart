import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'dart:async';

import 'package:ultra_app/core/widgets/back_icon_button.dart';
import 'package:ultra_app/core/widgets/spacing.dart';

class OTPVerificationView extends StatefulWidget {
  const OTPVerificationView({super.key});

  @override
  _OTPVerificationViewState createState() => _OTPVerificationViewState();
}

class _OTPVerificationViewState extends State<OTPVerificationView> {
  TextEditingController otpController = TextEditingController();
  int _counter = 30;
  late Timer _timer;
  bool _isResendEnabled = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _isResendEnabled = false;
    _counter = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        setState(() {
          _isResendEnabled = true;
        });
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhiteColor,
      appBar: AppBar(
        leading: BackIconButton(),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verify code",
          style: AppStyles.styleBold25(context)
        ),
        backgroundColor: AppColors.pureWhiteColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A code has been sent to\n+39 234 556 7988 via SMS",
              textAlign: TextAlign.center,
              style: AppStyles.styleRegular16(context).copyWith(color:AppColors.greyColor ),
            ),
            VerticalSpace(24),
            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: otpController,
              keyboardType: TextInputType.number,
              textStyle: AppStyles.styleBold25(context).copyWith(
                color: AppColors.secondColor
              ),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                fieldHeight: 50,
                fieldWidth: 40,
                activeColor: AppColors.pureBlackColor,
                inactiveColor: AppColors.pureBlackColor,
                selectedColor: Colors.orange,
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: _isResendEnabled ? _startTimer : null,
              child: Text(
                _isResendEnabled ? "Resend code" : "Resend code (${_counter}s)",
                style: TextStyle(
                  fontSize: 16,
                  color: _isResendEnabled ? Colors.orange : Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
