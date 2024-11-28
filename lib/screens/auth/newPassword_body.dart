import 'package:datn/widgets/custom_button.dart';
import 'package:datn/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewpasswordBody extends StatefulWidget {
  const NewpasswordBody({super.key});

  @override
  State<NewpasswordBody> createState() => _NewpasswordBodyState();
}

class _NewpasswordBodyState extends State<NewpasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Center(
        child: Column(
          children: [
            // New Password
            const CustomTextField(
              labelText: "New Password",
              hintText: "••••••••",
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off,
                color: Color(0xFF093030),
              ),
            ),
            const SizedBox(height: 40),
            // Confirm Password
            const CustomTextField(
              labelText: "Confirm Password",
              hintText: "••••••••",
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off,
                color: Color(0xFF093030),
              ),
            ),
            const SizedBox(height: 150),
            CustomButton(
              height: 45,
              width: 357,
              text: "Change Password",
              onPressed: () {}, // Thêm chức năng đăng ký
              backgroundColor: const Color(0xFF00D09E), // Nền xanh nhạt
              textColor: const Color(0xFF093030),
            ),
          ],
        ),
      ),
    );
  }
}
