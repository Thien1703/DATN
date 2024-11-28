import 'package:datn/screens/auth/newPassword_body.dart';
import 'package:datn/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class NewpasswordScreen extends StatelessWidget {
  const NewpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(headerText: "New Password", body: NewpasswordBody());
  }
}