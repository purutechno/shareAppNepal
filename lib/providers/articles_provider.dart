import 'package:flutter/cupertino.dart';
import 'package:nepalstock/functions/articles_fun.dart';
import 'package:nepalstock/functions/injection.dart';
import 'package:nepalstock/models/articles.dart';
import 'package:nepalstock/utils/response.dart';
import 'package:rxdart/rxdart.dart';

class ArticlesProvider extends ChangeNotifier {
  BehaviorSubject<Response>? _controllerEnglishArticles;
  BehaviorSubject<Response>? _controllerNepaliArticles;
  final ArticlesFun _articleFun = inject<ArticlesFun>();

  Stream<Response>? get streamEnglishArticles =>
      _controllerEnglishArticles?.stream;

  Stream<Response>? get streamNepaliArticles =>
      _controllerNepaliArticles?.stream;

  List<Article> englishArticles = [];
  List<Article> nepaliArticles = [];

  ArticlesProvider() {
    _controllerEnglishArticles = BehaviorSubject<Response>();
    _controllerNepaliArticles = BehaviorSubject<Response>();
  }

  getEnglishArticles() async {
    _controllerEnglishArticles?.sink.add(Response.loading(""));
    await _articleFun.getArticlesInEnglish().then((value) {
      if (value is List<Article>) {
        englishArticles.addAll(value);
      }
    });
    _controllerEnglishArticles?.sink.add(Response.completed(""));
  }

  getNepaliArticles() async {
    _controllerNepaliArticles?.sink.add(Response.loading(""));
    await _articleFun.getArticlesInNepali().then((value) {
      if (value is List<Article>) {
        nepaliArticles.addAll(value);
      }
    });
    _controllerNepaliArticles?.sink.add(Response.completed(""));
  }

  @override
  void dispose() {
    _controllerEnglishArticles?.close();
    _controllerNepaliArticles?.close();
    // TODO: implement dispose
    super.dispose();
  }
}
