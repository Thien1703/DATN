import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final double height; // Thêm chiều cao
  final double width;  // Thêm chiều rộng

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,  // Cung cấp giá trị mặc định cho obscureText
    this.suffixIcon,  // Cho phép suffixIcon là null nếu không cần
    this.height = 41.0, // Giá trị mặc định chiều cao
    this.width = 356, // Giá trị mặc định chiều rộng
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF093030),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: width, // Chiều rộng của trường nhập liệu
          height: height, // Chiều cao của trường nhập liệu
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Color.fromARGB(127, 9, 48, 48)),
              filled: true,
              fillColor: const Color(0xFFDFF7E2),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
