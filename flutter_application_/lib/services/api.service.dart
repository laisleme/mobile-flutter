import 'package:flutter_application_/models/AgroYo_input.model.dart';
import 'package:flutter_application_/services/api.service.dart';
import 'api.service.dart';



class ApiService {
  final baseApi = "https://localhost:8000";
  final httpRequest = Dio;

  Future getInsumos() async {
    var response = await this.httpRequest.get(this.baseApi + '/insumo');
    var data = AgroYoInput.fromJson(response.data);

    return [data];
  }

  void postInsumos(AgroYoInput input) async {
    await this.httpRequest.post(baseApi + '/insumo', data: input.toJson());
  }

  static get Dio {}
}

mixin Dio {
}


