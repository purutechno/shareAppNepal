import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nepalstock/models/articles.dart';

class ArticlesFun {
  static const String appContent = "content";
  static const String articleCollection = "articles";
  static const String englishLanguage = "en";
  static const String nepaliLanguage = "np";

  Future getArticlesInEnglish() {
    return FirebaseFirestore.instance
        .collection(appContent)
        .doc(englishLanguage)
        .collection(articleCollection)
        .get()
        .then((value) {
      return value.docs.map((e) => Article.fromJson(e.data())).toList();
    }).catchError((e) {
      return e;
    });
  }

  Future getArticlesInNepali() {
    return FirebaseFirestore.instance
        .collection(appContent)
        .doc(nepaliLanguage)
        .collection(articleCollection)
        .get()
        .then((value) {
      return value.docs.map((e) => Article.fromJson(e.data())).toList();
    }).catchError((e) {
      return e;
    });
  }
}
