class PatientModel {
  final String name;
  final String email;
  final String address;
  final String phoneNumber;
  final String password;

  PatientModel(
      {required this.name,
      required this.email,
      required this.address,
      required this.phoneNumber,
      required this.password});
  factory PatientModel.fromJson(jsonData) {
    return PatientModel(
      name: jsonData['UserName'],
      email: jsonData["email"],
      address: jsonData['address'],
      phoneNumber: jsonData['PhoneNumber'],
      password: jsonData['password'],
    );
  }
}
