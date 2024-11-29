import 'Bills/hoadon.dart';
import 'Phone/dienthoai.dart';
import 'Shop/cuahang.dart';

void main() {
  // Khởi tạo cửa hàng
  List<Dienthoai> danhSachDienThoai = [];
  List<Hoadon> danhSachHoaDon = [];
  Cuahang cuaHang = Cuahang(
    'DT001',
    'Điện thoại XYZ',
    'Hãng A',
    1000000,
    1200000,
    10,
    true,
    'Cửa hàng 1',
    'Địa chỉ 1',
    danhSachDienThoai,
    danhSachHoaDon,
  );

  //QUẢN LÝ ĐIỆN THOẠI
  //Thêm điện thoại mới
  Dienthoai dienThoaiMoi =
      Dienthoai('DT002', 'Điện thoại ABC', 'Hãng B', 800000, 1000000, 5, true);
  cuaHang.themDienThoai(dienThoaiMoi);

  //Cập nhật thông tin điện thoại
  Dienthoai dienThoaiCapNhat = Dienthoai(
      'DT002', 'Điện thoại ABC Updated', 'Hãng B', 850000, 1100000, 5, true);
  cuaHang.capNhatDienThoai('DT002', dienThoaiCapNhat);

  // Kiểm tra validation
  // Kiểm tra thông tin điện thoại
  Dienthoai? timDienThoai = cuaHang.timKiemDienThoai('DT002');
  if (timDienThoai == true) {
    print('Tìm thấy điện thoại: ${timDienThoai}');
  } else {
    print('Không tìm thấy điện thoại.');
  }

  //QUẢN LÝ HÓA ĐƠN
  // Tạo hóa đơn hợp lệ
  Hoadon hoadon = Hoadon(
      'HD001',
      'Iphone',
      'Apple',
      800000,
      50000,
      1,
      true,
      'HD001',
      DateTime.now(),
      dienThoaiMoi,
      3,
      1000000,
      'Khách A',
      '0123456789');

  // Kiểm tra tồn kho và validation
  int soLuongTonKho = cuaHang.timKiemDienThoai('DT002').SL;
  if (soLuongTonKho >= hoadon.SLMua) {
    cuaHang.taoHoaDon(hoadon);
    print('Hóa đơn đã được tạo: ${hoadon.toString()}');
  } else {
    print('Hóa đơn không hợp lệ! Tồn kho không đủ.');
  }

  //THỐNG KÊ BÁO CÁO
  //Thống kê doanh thu
  double doanhThu = cuaHang.tinhTongDoanhThu(
      DateTime.now().subtract(Duration(days: 30)), DateTime.now());
  print('Doanh thu trong 30 ngày qua: $doanhThu');

  //Thống kê lợi nhuận
  double loiNhuan = cuaHang.tinhTongLoiNhuan(
      DateTime.now().subtract(Duration(days: 30)), DateTime.now());
  print('Lợi nhuận trong 30 ngày qua: $loiNhuan');

  //Thống kê tồn kho
  int tonKho = cuaHang.thongKeTonKho();
  print('Tồn kho hiện tại: $tonKho');
}
