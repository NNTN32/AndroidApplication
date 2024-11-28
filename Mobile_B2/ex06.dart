/*
BT7:
2. Viết chương trình chuyển đổi 1 số nguyên (n>=1) được nhập từ bàn phím thành số nhị phân
*/

//BT7
import 'dart:io';

void main() {
  // Nhập số nguyên từ bàn phím
  print('Nhập một số nguyên n (n >= 1):');
  int n = int.parse(stdin.readLineSync()!);

  // Kiểm tra nếu n >= 1
  if (n < 1) {
    print('Số nhập vào phải lớn hơn hoặc bằng 1.');
    return;
  }

  // Chuyển đổi số nguyên thành số nhị phân
  String binary = '';
  while (n > 0) {
    binary = (n % 2).toString() + binary;
    n = n ~/ 2;
  }

  // In ra kết quả
  print('Số nhị phân là: $binary');
}