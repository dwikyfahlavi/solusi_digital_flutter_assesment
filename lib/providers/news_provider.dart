import 'package:flutter/cupertino.dart';
import 'package:solusi_digital_flutter_assesment/constants/state.dart';
import 'package:solusi_digital_flutter_assesment/models/news.dart';
import 'package:solusi_digital_flutter_assesment/services/news_api.dart';

class NewsProvider extends ChangeNotifier {
  final NewsApi service = NewsApi();

  List<Articles>? _news = [];
  List<Articles>? get news => _news;

  MyState _state = MyState.success;
  MyState get state => _state;

  changeState(MyState state) {
    _state = state;
    notifyListeners();
  }

  Future<void> getAllNews() async {
    changeState(MyState.loading);
    try {
      List<Articles>? threadApi = await service.getNews();
      _news = threadApi;
      changeState(MyState.success);
      notifyListeners();
      print("ini thread : ${threadApi![0].title}");
    } catch (e) {
      changeState(MyState.error);
      print('error bos $e');
      notifyListeners();
    }
  }
}
