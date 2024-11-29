import 'sinhvien.dart';

class LopHoc {
  String _tenLop;
  List<Sinhvien> _danhsachSV = [];

  //Constructor
  LopHoc(this._tenLop);

  //Get, Set
  String get tenLop => _tenLop;
  List<Sinhvien> get danhSach => _danhsachSV;

  set tenLop(String tenLop) {
    _tenLop = (tenLop.isNotEmpty) ? tenLop : tenLop;
  }

  //Methods
  void AddSV(Sinhvien sv) {
    _danhsachSV.add(sv);
  }

  void ScreenList() {
    print("Danh sách lớp $_tenLop");
    for (var sv in _danhsachSV) {
      sv.hienThiThonTin();
      print('Xếp loại: ${sv.xepLoai()}');
    }
  }
}
