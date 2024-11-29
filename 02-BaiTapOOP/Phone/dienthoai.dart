class Dienthoai {
  //Các thuộc tính private
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _SL;
  bool _trangThai;

  //Constructor
  Dienthoai(this._maDT, this._tenDT, this._hangSX, this._giaNhap, this._giaBan,
      this._SL, this._trangThai);

  //Getter, Setter
  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get SL => _SL;
  bool get trangThai => _trangThai;

  set maDT(String maDT) {
    if (maDT.isNotEmpty && RegExp(r'^DT-\d{3}$').hasMatch(maDT)) {
      _maDT = maDT;
    }
  }

  set tenDT(String tenDT) {
    _tenDT = (tenDT.isNotEmpty) ? tenDT : _tenDT;
  }

  set hangSX(String hangSX) {
    _hangSX = (hangSX.isNotEmpty) ? hangSX : _hangSX;
  }

  set SL(int SL) {
    if (SL >= 0) {
      _SL = SL;
    }
  }

  set giaNhap(double giaNhap) {
    if (giaNhap > 0) {
      _giaNhap = giaNhap;
    }
  }

  set giaBan(double giaBan) {
    if (giaBan > 0 && giaBan > _giaNhap) {
      _giaBan = giaBan;
    }
  }

  //Methods
  double tinhLoiNhuan() {
    return _giaBan - _giaNhap;
  }

  bool kiemTra() {
    return _trangThai && _SL > 0;
  }

  void hienThiThongTin() {
    print("Mã ĐT: $_maDT");
    print("Tên ĐT: $_tenDT");
    print("Hãng: $_hangSX");
    print("Giá nhập: $_giaNhap");
    print("Giá bán: $_giaBan");
    print("Số lượng kho: $_SL");
    print("Trạng Thái Hàng: $_trangThai");
  }
}
