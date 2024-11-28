import 'package:datn/screens/auth/register_body.dart';
import 'package:datn/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(headerText: "Create Account", body: RegisterBody());
  }
}
