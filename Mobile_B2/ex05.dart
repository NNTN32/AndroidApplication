/*
BT6:
1. Viết chương trình chuyển đổi 1 số nguyên (n >=1) được nhập từ bàn phóm thành số nhị phân
*/

//BT6
import 'dart:io';

void main() {
  // Yêu cầu người dùng nhập số nguyên
  stdout.write("Nhập một số nguyên (n >= 1): ");
  int? n = int.tryParse(stdin.readLineSync()!);

  // Kiểm tra số đã nhập có hợp lệ không
  if (n == null || n < 1) {
    print("Vui lòng nhập một số nguyên hợp lệ lớn hơn hoặc bằng 1.");
  } else {
    // Chuyển đổi số sang nhị phân
    String SoNhiPhan = toBinary(n);
    print("Số nhị phân của $n là: $SoNhiPhan");
  }
}

// Hàm chuyển đổi số nguyên sang số nhị phân
String toBinary(int n) {
  String SoNhiPhan = "";
  while (n > 0) {
    SoNhiPhan = (n % 2).toString() + SoNhiPhan;
    n ~/= 2;
  }
  return SoNhiPhan;
}