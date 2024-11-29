import 'class.dart';
import 'sinhvien.dart';

void main() {
  var sv = Sinhvien("Nguyen Van A", 20, "SV001", 9);
  print(sv.hoTen);

  sv.hoTen = 'Nguyen Van B';
  print(sv.hoTen);

  sv.hoTen = "";
  print(sv.hoTen);
  print(sv.xepLoai());

  sv.hienThiThonTin();

  // --------------------
  var lophoc = LopHoc("21DTHF1");
  lophoc.AddSV(Sinhvien('Nguyễn Văn A', 20, 'SV001', 8.5));
  lophoc.AddSV(Sinhvien('Nguyễn Văn B', 21, 'SV002', 6.5));
  lophoc.AddSV(Sinhvien('Nguyễn Văn C', 22, 'SV003', 5.5));
  lophoc.AddSV(Sinhvien('Nguyễn Văn F', 23, 'SV004', 4));
  lophoc.ScreenList();
}
