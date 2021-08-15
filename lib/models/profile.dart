class Profile {
  String? name;
  String? gender;
  String? age;

  Profile({this.name, this.gender});

  Profile.fromJson(Map<String, dynamic> data) {
    if (data.containsKey('name') && data['name'] != null) {
      name = data['ltp'];
    }
    if (data.containsKey('gender') && data['gender'] != null) {
      gender = data['gender'];
    }
    if (data.containsKey('age') && data['age'] != null) {
      age = data["age"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ltp'] = this.name;
    data['gender'] = this.gender;
    data['age'] = this.age;
    return data;
  }
}
