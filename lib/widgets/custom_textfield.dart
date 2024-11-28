import 'package:flutter/material.dart';

// CustomTextField là một widget tùy chỉnh cho trường nhập liệu với các tùy chọn như chiều cao, chiều rộng, và mật khẩu.
class CustomTextField extends StatelessWidget {
  // Các biến đầu vào của widget.
  final String labelText;  // Văn bản nhãn cho trường nhập liệu.
  final String hintText;   // Văn bản gợi ý cho trường nhập liệu.
  final bool obscureText;  // Điều khiển có ẩn văn bản nhập liệu hay không (sử dụng cho mật khẩu).
  final Widget? suffixIcon;  // Icon ở cuối trường nhập liệu (ví dụ: icon mắt để hiện/ẩn mật khẩu).
  final double height;      // Chiều cao của trường nhập liệu.
  final double width;       // Chiều rộng của trường nhập liệu.

  // Constructor để khởi tạo các giá trị mặc định và yêu cầu các tham số đầu vào cần thiết.
  const CustomTextField({
    super.key,
    required this.labelText,  // Văn bản nhãn (bắt buộc).
    required this.hintText,   // Văn bản gợi ý (bắt buộc).
    this.obscureText = false,  // Mặc định không ẩn văn bản (false).
    this.suffixIcon,  // Cho phép suffixIcon là null nếu không cần.
    this.height = 41.0, // Giá trị mặc định chiều cao là 41.0.
    this.width = 356,  // Giá trị mặc định chiều rộng là 356.
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,  // Căn chỉnh các phần tử bên trong cột (trái)
      children: [
        // Text widget để hiển thị nhãn cho trường nhập liệu.
        Text(
          labelText,  // Văn bản nhãn sẽ được hiển thị.
          style: const TextStyle(
            fontSize: 15,  // Kích thước font chữ cho nhãn.
            color: Color(0xFF093030),  // Màu sắc của nhãn.
            fontWeight: FontWeight.w500,  // Định dạng chữ đậm.
          ),
        ),
        const SizedBox(height: 5),  // Khoảng cách giữa nhãn và trường nhập liệu.
        
        // SizedBox giúp đặt chiều rộng và chiều cao cho trường nhập liệu.
        SizedBox(
          width: width,  // Chiều rộng của trường nhập liệu.
          height: height,  // Chiều cao của trường nhập liệu.
          child: TextField(
            obscureText: obscureText,  // Quyết định có ẩn văn bản hay không (dùng cho mật khẩu).
            decoration: InputDecoration(
              hintText: hintText,  // Văn bản gợi ý sẽ hiển thị khi trường nhập liệu trống.
              hintStyle: const TextStyle(color: Color.fromARGB(127, 9, 48, 48)),  // Màu sắc cho gợi ý.
              filled: true,  // Thiết lập trường nhập liệu có nền màu.
              fillColor: const Color(0xFFDFF7E2),  // Màu nền cho trường nhập liệu.
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,  // Padding dọc cho nội dung trong trường nhập liệu.
                horizontal: 16.0,  // Padding ngang cho nội dung trong trường nhập liệu.
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),  // Bo tròn các góc của trường nhập liệu.
                borderSide: BorderSide.none,  // Không có đường viền ngoài cho trường nhập liệu.
              ),
              suffixIcon: suffixIcon,  // Thêm icon ở cuối trường nhập liệu (nếu có).
            ),
          ),
        ),
      ],
    );
  }
}
