import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:solusi_digital_flutter_assesment/models/news.dart';

class NewsApi {
  final Dio _dio = Dio();

  final String _baseUrl = 'https://newsapi.org/v2/everything';
  final String _apikey = 'dabb8d964a79443f8bedf83f0588aa2e';

  Future<List<Articles>?> getNews() async {
    List<Articles>? news = [];

    try {
      var response = await _dio.get(_baseUrl,
          // options: Options(headers: {
          //   "API-Key": "2ry3HBOBLi1YkCma49pdnH3RpMguwgNZ1bvU2eqCOzZg2y0g2j",
          //   "Authorization": "Bearer $token"
          // }),
          queryParameters: {
            "apiKey": _apikey,
            "q": "apple",
            "from": "2022-08-21",
            "to": "2022-08-21",
            "sortBy": "popularity"
          });
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        List listData = data["articles"];
        news = listData.map((e) => Articles.fromJson(e)).toList();
      }
    } on DioError catch (e) {
      // final defaultError = ErrorRespond.fromJson(e.response?.data);
      debugPrint(e.message);
      throw "${e.message}";
    }
    return news;
  }
}
