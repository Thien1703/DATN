import 'package:datn/widgets/custom_button.dart';
import 'package:datn/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomTextField(
            labelText: "Username Or Email",
            hintText: "example@example.com",
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            labelText: "Password",
            hintText: "••••••••",
            obscureText: true,
            suffixIcon: Icon(
              Icons.visibility_off,
              color: Color(0xFF093030),
            ),
          ),
          const SizedBox(height: 80),
          CustomButton(
            text: "Log In",
            onPressed: () {}, // Thêm chức năng xử lý đăng nhập
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {}, // Thêm chức năng quên mật khẩu
            child: const Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color(0xFF093030),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          CustomButton(
            text: "Sign Up",
            onPressed: () {}, // Thêm chức năng đăng ký
            backgroundColor: const Color(0xFFDFF7E2), // Nền xanh nhạt
            textColor: const Color(0xFF093030),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Use ",
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {}, // Thêm chức năng truy cập vân tay
                child: const Text(
                  "Fingerprint",
                  style: TextStyle(
                    color: Color(0xFF0068FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                " To Access",
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
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
                    icon:
                        const Icon(Icons.g_mobiledata, color: Color(0xFF093030)),
                  ),
                ],
              ),
            ],
          ),
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
