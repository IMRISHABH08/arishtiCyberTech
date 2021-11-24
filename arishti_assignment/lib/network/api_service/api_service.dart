import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:arishti_assignment/models/api_response/network_button_data/network_button_data.dart';

class API {
  Future<NetwotkButtonData?> getData() async {
    final url = 'https://api.coincap.io/v2/exchanges/kraken';
    var response = await http.get(
      Uri.parse(url),
    );

    if (response != null) {
      var message = jsonDecode(response.body);

      print("response ${response.body}");

      var data = NetwotkButtonData.fromJson(message);
      print('\n Response Data🎇🎇🎇  ${data.data} ');
      return data;
    } else {
      print('response AllOrder Data null ....$response');
    }
  }
}
