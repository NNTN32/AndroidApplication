class Sinhvien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  //Constructor
  Sinhvien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  //Get, Set
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    _tuoi = (tuoi > 0) ? tuoi : _tuoi; //dk toan tu
  }

  set maSV(String maSV) {
    _maSV = (maSV.isNotEmpty) ? maSV : _maSV;
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  //methos
  void hienThiThonTin() {
    print('Họ tên: $hoTen');
    print('Tuổi: $tuoi');
    print('Mã SV: $maSV');
    print('Điểm TB: $diemTB');
  }

  String xepLoai() {
    if (_diemTB >= 8.0) return 'Học Sinh Giỏi';
    if (_diemTB >= 6.5) return 'Học Sinh Khá';
    if (_diemTB >= 5.0) return 'Học Sinh Trung Bình';
    return 'Học Sinh Yếu';
  }
}
