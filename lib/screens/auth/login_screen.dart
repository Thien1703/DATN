import 'package:datn/screens/auth/login_body.dart';
import 'package:datn/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(headerText:"WELCOME" , body: LoginBody());
}
}