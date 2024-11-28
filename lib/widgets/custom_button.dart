import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double height;
  final double width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF00D09E), // Màu nền mặc định
    this.textColor = const Color(0xFF093030), // Màu chữ mặc định
    this.fontSize = 20.0, // Kích thước chữ mặc định
    this.height = 45.0, // Chiều cao mặc định
    this.width = 207.0, // Chiều rộng mặc định
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      // Đảm bảo nút được căn giữa để không bị ảnh hưởng layout cha
      child: SizedBox(
        width: width, // Đặt chiều rộng cho nút
        height: height, // Đặt chiều cao cho nút
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, // Màu nền nút
            foregroundColor: textColor, // Màu chữ
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Bo góc nút
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
