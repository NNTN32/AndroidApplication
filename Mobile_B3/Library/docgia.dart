import 'book.dart';

class Docgia {
  String _maDG;
  String _hoTen;
  List<Book> _dsMuon = [];

  Docgia(this._maDG, this._hoTen);

  String get maDG => _maDG;
  String get hoTen => _hoTen;
  List<Book> get dsMuon => _dsMuon;

  set maDG(String maDG) {
    _maDG = (maDG.isNotEmpty) ? maDG : _maDG;
  }

  set hoTen(String hoTen) {
    _hoTen = (hoTen.isNotEmpty) ? hoTen : _hoTen;
  }
}
