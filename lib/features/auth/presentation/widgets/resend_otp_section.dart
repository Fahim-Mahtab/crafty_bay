import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../app/app_colors.dart';
import '../providers/timer_provider.dart';

class ResendOtp extends StatefulWidget {
  const ResendOtp({super.key});

  @override
  State<ResendOtp> createState() => _ResendOtpState();
}

class _ResendOtpState extends State<ResendOtp> {
  final TimerProvider _timerProvider = TimerProvider();
  @override
  void initState() {
    super.initState();
    _timerProvider.startTimer(12);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _timerProvider,
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Consumer<TimerProvider>(
            builder: (context, timerProvider, _) {
              return Row(
                children: [
                  if (timerProvider.isTimerRunning)
                    Text("Resend OTP in: ${timerProvider.remainingSeconds}s"),
                  TextButton(
                    onPressed: _resend,
                    child: Text(
                      "Resend OTP ?",
                      style: TextStyle(
                        color: timerProvider.isTimerRunning
                            ? Colors.grey
                            : AppColors.themeColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  void _resend() {
    _timerProvider.startTimer(12);
  }
}
