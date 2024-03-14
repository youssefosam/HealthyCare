import 'package:healthycare/Helper/api.dart';
import 'package:healthycare/Model/patient_model.dart';

class AddPatient {
  Future<PatientModel> addpatient(
      {required  String name,
      required int NID,
      required String address,
      required String phoneNumber,
      required String password}) async {
    Map<String, dynamic> data =
        // ignore: missing_required_param
        await Api().post(url: 'http://localhost:1337/api/patients', body: {
      "UserName": name,
      "NID": NID,
      "address": address,
      "PhoneNumber": phoneNumber,
      "Password": password,
    });
    return PatientModel.fromJson(data);
  }
}