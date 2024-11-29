class Book {
  String _maSach;
  String _tenSach;
  String _tacGia;
  String _trangThai;

  Book(this._maSach, this._tacGia, this._tenSach, this._trangThai);

  String get maSach => _maSach;
  String get tacGia => _tacGia;
  String get tenSach => _tenSach;
  String get trangThai => _trangThai;

  set maSach(String maSach) {
    _maSach = (maSach.isNotEmpty) ? maSach : _maSach;
  }

  set tenSach(String tenSach) {
    _tenSach = (tenSach.isNotEmpty) ? tenSach : _tenSach;
  }

  set tacGia(String tacGia) {
    _tacGia = (tacGia.isNotEmpty) ? tacGia : _tacGia;
  }

  //methos
  void Show() {
    print('Mã Sách: $maSach');
    print('Tác Giả: $tacGia');
    print('Tên Sách: $tenSach');
    print('Trạng Thái: $trangThai');
  }
}
