import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:queritel_practical/constants/dog_constant.dart';
import 'package:queritel_practical/model/dogs_model.dart';

class DogApiService {
  Future<List<DogsModel>?> getDogs() async {
    try {
      var url = Uri.parse(DogsApiConstants.baseUrl + DogsApiConstants.catsEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<DogsModel> dogsmodel = dogsModelFromJson(
          jsonDecode(response.body)
        );
        return dogsmodel;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}