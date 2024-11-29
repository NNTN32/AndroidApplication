import 'employee.dart';
import 'employeesale.dart';

void main() {
  //Test nhân viên
  var nv = NhanVien('NV001', 'Nguyễn Văn A', 5000000);
  print('Thông tin nhân viên thường: ');
  nv.Show();

  var nvBH = NhanVienBanHang('NV002', 'Phạm Thị B', 5000000, 10000000, 4500000);
  print("Thông tin nhân viên sale");
  nvBH.Show();

  nvBH.doanhSo = -10000000;
  print('\nSau khi tăng doanh số:');
  nvBH.Show();
}
