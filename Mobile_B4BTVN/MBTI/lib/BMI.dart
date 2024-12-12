class BMI {
  String calculateBMI(double height, double weight) {
    if (height <= 0 || weight <= 0) {
      return 'Dữ liệu không hợp lệ';
    }
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

    if (bmi < 18.5) {
      return 'BMI: ${bmi.toStringAsFixed(1)} - Gầy';
    } else if (bmi < 24.9) {
      return 'BMI: ${bmi.toStringAsFixed(1)} - Bình thường';
    } else if (bmi < 29.9) {
      return 'BMI: ${bmi.toStringAsFixed(1)} - Thừa cân';
    } else {
      return 'BMI: ${bmi.toStringAsFixed(1)} - Béo phì';
    }
  }
}