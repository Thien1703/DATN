import 'package:flutter/material.dart';

// CustomButton là một widget nút tùy chỉnh với các tùy chọn như màu sắc, kích thước, và hành vi khi nhấn.
class CustomButton extends StatelessWidget {
  // Các tham số cấu hình cho nút.
  final String text;  // Văn bản hiển thị trên nút.
  final VoidCallback onPressed;  // Hành động sẽ được thực hiện khi nút được nhấn.
  final Color backgroundColor;  // Màu nền của nút.
  final Color textColor;  // Màu chữ của nút.
  final double fontSize;  // Kích thước font chữ trên nút.
  final double height;  // Chiều cao của nút.
  final double width;  // Chiều rộng của nút.

  // Constructor cho CustomButton, cung cấp các giá trị mặc định cho các tham số.
  const CustomButton({
    super.key,
    required this.text,  // Văn bản hiển thị trên nút (bắt buộc).
    required this.onPressed,  // Hành động khi nút được nhấn (bắt buộc).
    this.backgroundColor = const Color(0xFF00D09E), // Màu nền mặc định là xanh lá nhạt.
    this.textColor = const Color(0xFF093030), // Màu chữ mặc định là màu xanh đậm.
    this.fontSize = 20.0, // Kích thước chữ mặc định là 20.0.
    this.height = 45.0, // Chiều cao mặc định của nút là 45.0.
    this.width = 207.0, // Chiều rộng mặc định của nút là 207.0.
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      // Căn giữa nút trong không gian của layout cha, giúp nút luôn ở vị trí trung tâm.
      child: SizedBox(
        width: width, // Đặt chiều rộng cho nút.
        height: height, // Đặt chiều cao cho nút.
        child: ElevatedButton(
          onPressed: onPressed, // Hành động khi nút được nhấn.
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, // Màu nền của nút.
            foregroundColor: textColor, // Màu chữ của nút.
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Bo tròn các góc của nút.
            ),
          ),
          child: Text(
            text, // Văn bản sẽ hiển thị trên nút.
            style: TextStyle(
              fontSize: fontSize,  // Kích thước chữ.
              fontWeight: FontWeight.bold,  // Chữ đậm.
            ),
          ),
        ),
      ),
    );
  }
}
