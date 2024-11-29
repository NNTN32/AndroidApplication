class NhanVien {
  String _maNV;
  String _hoTen;
  double _luongCanBan;

  NhanVien(this._maNV, this._hoTen, this._luongCanBan);

  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCoBan => _luongCanBan;

  set maNV(String maNV) {
    _maNV = (maNV.isNotEmpty) ? maNV : _maNV;
  }

  set hoTen(String hoTen) {
    _hoTen = (hoTen.isNotEmpty) ? hoTen : _hoTen;
  }

  set luongCoBan(double luongCoBan) {
    if (luongCoBan > 0) {
      _luongCanBan = luongCoBan;
    }
  }

  double Tinhluong() {
    return _luongCanBan;
  }

  void Show() {
    print('Họ tên: $_hoTen');
    print('Mã Nhân Viên: $_maNV');
    print('Lương Cơ Bản: $_luongCanBan');
    print('Tổng Lương: ${Tinhluong()}');
  }
}
