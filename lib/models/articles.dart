class Article {
  String? title;
  List<String>? imageUrls;
  List<String>? categories;
  String? ltp;
  String? entry;
  String? firstTarget;
  String? stepLoss;
  String? conditions;

  Article(
      {this.title,
      this.imageUrls,
      this.categories,
      this.ltp,
      this.entry,
      this.firstTarget,
      this.stepLoss,
      this.conditions});

  Article.fromJson(Map<String, dynamic> data) {
    imageUrls?.clear();
    if (data.containsKey('image') && data['image'] != null) {
      for (int i = 0; i < List.from(data['image']).length; i++) {
        imageUrls?.add(data['image'][i]);
      }
    }

    categories?.clear();
    if (data.containsKey('categories') && data['categories'] != null) {
      for (int i = 0; i < List.from(data['categories']).length; i++) {
        categories?.add(data['categories'][i]);
      }
    }

    if (data.containsKey('title') && data['title'] != null) {
      title = data['title'];
    }

    if (data.containsKey('ltp') && data['ltp'] != null) {
      ltp = data['ltp'];
    }

    if (data.containsKey('entry') && data['entry'] != null) {
      entry = data['entry'];
    }
    if (data.containsKey('firstTarget') && data['firstTarget'] != null) {
      firstTarget = data['firstTarget'];
    }
    if (data.containsKey('stepLoss') && data['stepLoss'] != null) {
      stepLoss = data['stepLoss'];
    }
    if (data.containsKey('conditions') && data['conditions'] != null) {
      conditions = data['conditions'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = imageUrls?.map((e) => e).toList();
    data['categories'] = categories?.map((e) => e).toList();
    data['ltp'] = ltp;
    data['entry'] = entry;
    data['firstTarget'] = firstTarget;
    data['stepLoss'] = stepLoss;
    data['conditions'] = conditions;
    data['title'] = title;
    return data;
  }
}

class Categories {
  static const String analysis = "Analysis";
  static const String news = "News";
  static const String companyInfo = "Company Info";
  static const String bonusDeclaration = "Bonus Declaration";
  static const String all = "All";
}
