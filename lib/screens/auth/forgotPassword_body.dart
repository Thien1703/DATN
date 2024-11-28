import 'package:datn/widgets/custom_button.dart';
import 'package:datn/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotpasswordBody extends StatefulWidget {
  const ForgotpasswordBody({super.key});

  @override
  State<ForgotpasswordBody> createState() => _ForgotpasswordBodyState();
}

class _ForgotpasswordBodyState extends State<ForgotpasswordBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Reset Password?",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: Color(0xFF0E3E3E),
            ),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
            style: TextStyle(
              fontSize: 10,
              fontFamily: "League Spartan",
              fontWeight: FontWeight.w400,
              color: Color(0xFF0E3E3E),
            ),
          ),
          const SizedBox(height: 80),
          // Textfield
          const CustomTextField(
            labelText: "Enter Email Address",
            hintText: "example@example.com",
          ),
          const SizedBox(height: 40),
          // Button 'Next Step'
          CustomButton(
            width: 169,
            height: 32,
            text: "Next Step",
            onPressed: () {}, // Thêm chức năng xử lý đăng nhập
          ),
          const SizedBox(height: 80),
          // Button 'Sign Up'
          CustomButton(
            width: 169,
            height: 32,
            text: "Sign Up",
            onPressed: () {}, // Thêm chức năng đăng ký
            backgroundColor: const Color(0xFFDFF7E2), // Nền xanh nhạt
            textColor: const Color(0xFF093030),
          ),
          const SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "or sign up with",
                style: TextStyle(
                  color: Color(0xFF093030),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {}, // Thêm chức năng đăng nhập với Facebook
                    icon: const Icon(Icons.facebook, color: Color(0xFF093030)),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {}, // Thêm chức năng đăng nhập với Google
                    icon: const Icon(Icons.g_mobiledata,
                        color: Color(0xFF093030)),
                  ),
                ],
              ),
            ],
          ),
          // Text
          GestureDetector(
            onTap: () {}, // Thêm chức năng chuyển tới màn hình đăng ký
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                    color: Color(0xFF093030),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF0068FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
