import 'employee.dart';

class NhanVienBanHang extends NhanVien {
  double _doanhSo;
  double _hoaHong;

  NhanVienBanHang(String maNV, String hoTen, double luongCoBan, this._doanhSo,
      this._hoaHong)
      : super(maNV, hoTen, luongCoBan);

  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  set doanhSo(double doanhSo) {
    _doanhSo = (doanhSo > 0) ? doanhSo : _doanhSo;
  }

  set hoaHong(double hoaHong) {
    _hoaHong = (hoaHong >= 0 && hoaHong <= 1) ? hoaHong : _hoaHong;
  }

  @override
  double Tinhluong() {
    return super.luongCoBan + doanhSo * hoaHong;
  }

  @override
  void Show() {
    super.Show();
    print("Doanh số: $_doanhSo");
    print("Hoa Hồng: $_hoaHong");
    print("Tổng lương: ${Tinhluong()}");
  }
}
