import '../Bills/hoadon.dart';
import '../Phone/dienthoai.dart';

class Cuahang extends Dienthoai {
  // Thuộc tính private
  String _tenCuaHang; // Tên cửa hàng
  String _diaChi; // Địa chỉ
  List<Dienthoai> _danhSachDienThoai; // Danh sách điện thoại
  List<Hoadon> _danhSachHoaDon; // Danh sách hóa đơn

  // Constructor
  Cuahang(
      String maDT,
      String tenDT,
      String hangSX,
      double giaNhap,
      double giaBan,
      int SL,
      bool trangThai,
      this._tenCuaHang,
      this._diaChi,
      this._danhSachDienThoai,
      this._danhSachHoaDon)
      : super(maDT, tenDT, hangSX, giaNhap, giaBan, SL, trangThai);

  // Getter cho các thuộc tính
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  List<Dienthoai> get danhSachDienThoai => _danhSachDienThoai;
  List<Hoadon> get danhSachHoaDon => _danhSachHoaDon;

  //PHƯƠNG THỨC QUẢN LÝ ĐIỆN THOẠI
  // Phương thức thêm điện thoại mới
  void themDienThoai(Dienthoai dienThoai) {
    _danhSachDienThoai.add(dienThoai);
  }

  // Cập nhật thông tin điện thoại
  void capNhatDienThoai(String maDienThoai, Dienthoai dienThoaiMoi) {
    for (int i = 0; i < _danhSachDienThoai.length; i++) {
      if (_danhSachDienThoai[i].maDT == maDienThoai) {
        _danhSachDienThoai[i] = dienThoaiMoi;
        break;
      }
    }
  }

  // Ngừng kinh doanh điện thoại
  void ngungKinhDoanh(String maDienThoai) {
    _danhSachDienThoai
        .removeWhere((dienThoai) => dienThoai.maDT == maDienThoai);
  }

  // Tìm kiếm điện thoại
  Dienthoai timKiemDienThoai(String maDienThoai) {
    return _danhSachDienThoai
        .firstWhere((dienThoai) => dienThoai.maDT == maDienThoai);
  }

  // Hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    for (var dienThoai in _danhSachDienThoai) {
      dienThoai
          .hienThiThongTin(); // Giả sử lớp Dienthoai có phương thức toString() để hiển thị thông tin
    }
  }

  //PHƯƠNG THỨC QUẢN LÝ HÓA ĐƠN
  // Tạo hóa đơn mới
  void taoHoaDon(Hoadon hoaDon) {
    _danhSachHoaDon.add(hoaDon);
  }

  // Tìm kiếm hóa đơn
  Hoadon? timKiemHoaDon(String maHoaDon) {
    return _danhSachHoaDon.firstWhere((hoaDon) => hoaDon.maHD == maHoaDon);
  }

  // Hiển thị danh sách hóa đơn
  void hienThiDanhSachHoaDon() {
    for (var hoaDon in _danhSachHoaDon) {
      print(hoaDon);
    }
  }

  //PHƯƠNG THỨC THỐNG KÊ
  // Thống kê doanh thu theo khoảng thời gian
  double tinhTongDoanhThu(DateTime tuNgay, DateTime denNgay) {
    double tongDoanhThu = 0.0;
    for (var hoaDon in _danhSachHoaDon) {
      if (hoaDon.ngayBan.isAfter(tuNgay) && hoaDon.ngayBan.isBefore(denNgay)) {
        tongDoanhThu += hoaDon.tongTien();
      }
    }
    return tongDoanhThu;
  }

  // Thống kê lợi nhuận theo khoảng thời gian
  double tinhTongLoiNhuan(DateTime tuNgay, DateTime denNgay) {
    double tongLoiNhuan = 0.0;
    for (var hoaDon in _danhSachHoaDon) {
      if (hoaDon.ngayBan.isAfter(tuNgay) && hoaDon.ngayBan.isBefore(denNgay)) {
        tongLoiNhuan += hoaDon.loiNhuanThucTe();
      }
    }
    return tongLoiNhuan;
  }

  // Thống kê top điện thoại bán chạy
  List<Dienthoai> thongKeTopDienThoaiBanChay(int SL) {
    return _danhSachDienThoai.take(SL).toList();
  }

  // Thống kê tồn kho
  int thongKeTonKho() {
    return _danhSachDienThoai.length;
  }
}
