import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String headerText;
  final Widget body;
  final Widget? headerIcon; // Thêm icon vào header
  final double headerHeight; // Tuỳ chỉnh chiều cao header
  final Color headerBackgroundColor;
  final Color headerTextColor;
  final Color bodyBackgroundColor;

  const CustomScaffold({
    super.key,
    required this.headerText,
    required this.body,
    this.headerIcon,
    this.headerHeight = 0.20, // Chiều cao header mặc định (tỉ lệ màn hình)
    this.headerBackgroundColor = const Color(0xFF00D09E),
    this.headerTextColor = const Color(0xFF093030),
    this.bodyBackgroundColor = const Color(0xFFF1FFF3),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: headerBackgroundColor,
      body: Column(
        children: [
          // Header
          Container(
            height: MediaQuery.of(context).size.height * headerHeight,
            color: headerBackgroundColor,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (headerIcon != null) headerIcon!, // Hiển thị icon nếu có
                Text(
                  headerText,
                  style: TextStyle(
                    color: headerTextColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Body với bo góc
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bodyBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
