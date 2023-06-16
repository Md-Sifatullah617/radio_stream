import 'package:radio_stream/services/models/base_model.dart';
import 'package:radio_stream/services/models/database_model.dart';

class RadioModel extends DatabaseModel {
  static String table = "radios";
  final int id;
  final String radioName;
  final String? radioURL;
  final String radioDescription;
  final String? radioWebsite;
  final String radioPic;
  final bool? isBookmarked;

  RadioModel(
      {required this.id,
      required this.radioName,
      this.radioURL,
      required this.radioDescription,
      this.radioWebsite,
      required this.radioPic,
      this.isBookmarked});
  factory RadioModel.fromJson(Map<String, dynamic> json) {
    return RadioModel(
      id: json["ID"],
      radioName: json["RadioName"],
      radioURL: json["RadioURL"],
      radioDescription: json["RadioDesc"],
      radioWebsite: json["RadioWebsite"],
      radioPic: json["RadioPic"],
      isBookmarked: false,
    );
  }

  static RadioModel fromMap(Map<String, dynamic> map) {
    return RadioModel(
      id: map["ID"],
      radioName: map["RadioName"],
      radioURL: map["RadioURL"],
      radioDescription: map["RadioDesc"],
      radioWebsite: map["RadioWebsite"],
      radioPic: map["RadioPic"],
      isBookmarked: false,
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'radioName': radioName,
      'radioURL': radioURL,
      'radioDesc': radioDescription,
      'radioWebsite': radioWebsite,
      'raioPic': radioPic
    };
    return map;
  }
}

class RadioAPIModel extends BaseModel {
  List<RadioModel> data;
  RadioAPIModel({
    required this.data,
  });
  fromJson(Map<String, dynamic> json) {
    data = (json["Data"]).map((e) => RadioModel.fromJson(e)).toList();
  }
}
