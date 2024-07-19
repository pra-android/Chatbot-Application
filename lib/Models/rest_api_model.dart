class RestApiModel {
  final String texts;

  RestApiModel({required this.texts});

  factory RestApiModel.fromjson(Map<String, dynamic> map) {
    return RestApiModel(texts: map['content']['parts'][0]['text']);
  }
}
