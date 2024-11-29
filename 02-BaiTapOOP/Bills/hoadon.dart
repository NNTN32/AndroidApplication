import '../Phone/dienthoai.dart';

class Hoadon extends Dienthoai {
  //Các thuộc tính private
  String _maHD;
  DateTime _ngayBan;
  Dienthoai _dienthoai;
  int _SLMua;
  double _giaBanThucTe;
  String _tenKH;
  String _sdtKH;

  //Constructor
  Hoadon(
      String maDT,
      String tenDT,
      String hangSX,
      double giaNhap,
      double giaBan,
      int SL,
      bool trangThai,
      this._maHD,
      this._ngayBan,
      this._dienthoai,
      this._SLMua,
      this._giaBanThucTe,
      this._tenKH,
      this._sdtKH)
      : super(maDT, tenDT, hangSX, giaNhap, giaBan, SL, trangThai);

  //Getter, Setter
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  Dienthoai get dienThoai => _dienthoai;
  int get SLMua => _SLMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKH => _tenKH;
  String get sdtKH => _sdtKH;

  set maHD(String maHD) {
    if (maHD.isNotEmpty && RegExp(r'HD-\d{3}$').hasMatch(maHD)) {
      _maHD = maHD;
    }
  }

  set SLMua(int SLMua) {
    if (SLMua > 0 && SLMua <= SL) {
      _SLMua = SLMua;
    }
  }

  set giaBanThucTe(double giaBanThucTe) {
    if (giaBanThucTe > 0) {
      _giaBanThucTe = giaBanThucTe;
    }
  }

  set tenKH(String tenKH) {
    _tenKH = (tenKH.isNotEmpty) ? tenKH : _tenKH;
  }

  set sdtKH(String sdtKH) {
    if (sdtKH.isNotEmpty && RegExp(r'\d{10}$').hasMatch(sdtKH)) {
      _sdtKH = sdtKH;
    }
  }

  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isBefore(DateTime.now())) {
      _ngayBan = ngayBan;
    }
  }

  //Methods
  double tongTien() {
    return _SLMua * _giaBanThucTe;
  }

  double loiNhuanThucTe() {
    return (_giaBanThucTe - giaNhap) * _SLMua;
  }

  void Show() {
    print("Mã hóa đơn: $_maHD");
    print("Ngày bán: $_ngayBan");
    print("Thông tin khách hàng: $_tenKH,$_sdtKH");
    print("Điện thoại mua: $_dienthoai");
    print("Số lượng mua: $_SLMua");
    print("Tổng tiền: ${tongTien()}");
  }
}
