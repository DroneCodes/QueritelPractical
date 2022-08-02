import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:queritel_practical/constants/cat_constants.dart';
import 'package:queritel_practical/model/cats_model.dart';

class CatsApiService {
  Future<List<CatsModel>?> getCats() async {
    try {
      var url = Uri.parse(CatsApiConstants.baseUrl + CatsApiConstants.catsEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CatsModel> _catsmodel = catsModelFromJson(response.body);
        return _catsmodel;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}