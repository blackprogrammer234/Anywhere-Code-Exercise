class TheWireCharacterModel {
  List<RelatedTopics>? relatedTopices;
  SrcOptions? srcOptions;

  TheWireCharacterModel({this.relatedTopices, this.srcOptions});

  //constructor, for constructing a TheWireCharacterModel new  instance from a map structure.
  TheWireCharacterModel.fromJson(Map<String, dynamic> json) {
    relatedTopices = <RelatedTopics>[];
    if (json['RelatedTopics'] != null) {
      json['RelatedTopics'].forEach((v) {
        relatedTopices!.add(RelatedTopics.fromJson(v));
      });
    }
    srcOptions = json['src_options'] != null
        ? SrcOptions.fromJson(json['src_options'])
        : null;
  }

//method, which converts a TheWireCharacterModel instance into a map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (relatedTopices != null) {
      data['RelatedTopics'] = relatedTopices!.map((v) => v.toJson()).toList();
    }
    data['src_options'] = srcOptions;
    return data;
  }
}

class RelatedTopics {
  String? firstUrl;
  Icon? icon;
  String? result;
  String? text;

  RelatedTopics({this.firstUrl, this.icon, this.result, this.text});

  RelatedTopics.fromJson(Map<String, dynamic> json) {
    firstUrl = json['FirstURL'];
    icon = json['Icon'] != null ? Icon.fromJson(json['Icon']) : null;
    result = json['Result'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['FirstURL'] = firstUrl;
    data['Icon'] = icon;
    data['Result'] = result;
    data['Text'] = text;
    return data;
  }
}

class Icon {
  String? height;
  String? url;
  String? width;

  Icon({this.height, this.url, this.width});

  Icon.fromJson(Map<String, dynamic> json) {
    height = json['Height'];
    url = json['URL'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Height'] = height;
    data['URL'] = url;
    data['Width'] = width;
    return data;
  }
}

class SrcOptions {
  String? minAbstractLength;

  SrcOptions({this.minAbstractLength});

  SrcOptions.fromJson(Map<String, dynamic> json) {
    minAbstractLength = json['min_abstract_length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['min_abstract_length'] = minAbstractLength;
    return data;
  }
}
