import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:crypto_ticker/constants.dart';

class CryptoService {
  static Future<dynamic> getCoinData(String coin) async {
    String url = '$kCoinAPIURL/$coin/USD?apikey=$kCoinApiKey';
    var response = await http.get(Uri.parse(url));

    var coinData = jsonDecode(response.body);

    return coinData;
  }
}
