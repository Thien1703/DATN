import 'package:datn/widgets/custom_button.dart';
import 'package:datn/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: [
            const CustomTextField(
              labelText: "Full Name",
              hintText: "example@example.com",
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Email",
              hintText: "example@example.com",
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Mobile Number",
              hintText: "+ 123 456 789",
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Date of birth",
              hintText: "Date of birth",
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Password",
              hintText: "••••••••",
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off,
                color: Color(0xFF093030),
              ),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              labelText: "Confirm Password",
              hintText: "••••••••",
              obscureText: true,
              suffixIcon: Icon(
                Icons.visibility_off,
                color: Color(0xFF093030),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By continuing, you agree to",
                  style: TextStyle(
                    color: Color(0xFF093030),
                  ),
                ),
                GestureDetector(
                  onTap: () {}, // Thêm chức năng
                  child: const Text(
                    "Terms of Use and Privacy Policy.",
                    style: TextStyle(
                      color: Color(0xFF093030),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                CustomButton(
                  text: "Sign Up",
                  onPressed: () {}, // Thêm chức năng đăng ký
                  backgroundColor: const Color(0xFF00D09E), // Nền xanh nhạt
                  textColor: const Color(0xFF093030),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {}, // Thêm chức năng chuyển tới màn hình đăng ký
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF093030),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Log In",
                        style: TextStyle(
                          color: Color(0xFF0068FF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
