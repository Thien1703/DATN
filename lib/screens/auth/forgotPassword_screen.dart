import 'package:datn/screens/auth/forgotPassword_body.dart';
import 'package:datn/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ForgotpasswordScreen extends StatelessWidget {
  const ForgotpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
        headerText: "Forgot Password", body: ForgotpasswordBody());
  }
}
