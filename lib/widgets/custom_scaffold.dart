import 'package:flutter/material.dart';

// CustomScaffold là một widget tùy chỉnh mở rộng Scaffold, cung cấp khả năng tuỳ chỉnh header và body.
class CustomScaffold extends StatelessWidget {
  // Các tham số cấu hình cho header và body.
  final String headerText;  // Văn bản tiêu đề của header.
  final Widget body;  // Nội dung của body, có thể là bất kỳ widget nào.
  final Widget? headerIcon;  // Icon hiển thị trong header (tùy chọn).
  final double headerHeight;  // Chiều cao của header, mặc định là tỷ lệ màn hình.
  final Color headerBackgroundColor;  // Màu nền của header.
  final Color headerTextColor;  // Màu chữ của tiêu đề trong header.
  final Color bodyBackgroundColor;  // Màu nền của body.

  // Constructor cho CustomScaffold, cung cấp các giá trị mặc định cho các tham số.
  const CustomScaffold({
    super.key,
    required this.headerText,  // Văn bản tiêu đề header (bắt buộc).
    required this.body,  // Nội dung body (bắt buộc).
    this.headerIcon,  // Icon của header, có thể là null nếu không cần.
    this.headerHeight = 0.20, // Chiều cao của header là 20% chiều cao màn hình mặc định.
    this.headerBackgroundColor = const Color(0xFF00D09E),  // Màu nền mặc định cho header.
    this.headerTextColor = const Color(0xFF093030),  // Màu chữ mặc định cho tiêu đề header.
    this.bodyBackgroundColor = const Color(0xFFF1FFF3),  // Màu nền mặc định cho body.
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Đặt màu nền của Scaffold bằng màu của header.
      backgroundColor: headerBackgroundColor,
      body: Column(
        children: [
          // Header (phần trên của màn hình)
          Container(
            // Chiều cao của header được tính bằng tỷ lệ của chiều cao màn hình.
            height: MediaQuery.of(context).size.height * headerHeight,
            color: headerBackgroundColor,  // Màu nền của header.
            alignment: Alignment.center,  // Căn giữa nội dung trong header.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Căn giữa theo chiều dọc.
              children: [
                if (headerIcon != null) headerIcon!,  // Hiển thị icon nếu có.
                Text(
                  headerText,  // Văn bản tiêu đề của header.
                  style: TextStyle(
                    color: headerTextColor,  // Màu chữ cho tiêu đề.
                    fontSize: 32,  // Kích thước chữ.
                    fontWeight: FontWeight.bold,  // Định dạng chữ đậm.
                  ),
                ),
              ],
            ),
          ),
          // Body (nội dung chính của màn hình)
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bodyBackgroundColor,  // Màu nền của body.
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),  // Bo tròn góc trên bên trái của body.
                  topRight: Radius.circular(50),  // Bo tròn góc trên bên phải của body.
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),  // Padding cho body.
                child: body,  // Nội dung body sẽ được hiển thị ở đây.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
