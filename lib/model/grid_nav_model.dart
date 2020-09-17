import 'package:qiaofengnew/model/common_model.dart';

//首页网络卡片模型
class GridNavModel {
  final GridNavItem hotel;
  final GridNavItem flight;
  final GridNavItem travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return json != null
        ? GridNavModel(
            hotel: GridNavItem.fromJson(json['hotel']),
            flight: GridNavItem.fromJson(json['flight']),
            travel: GridNavItem.fromJson(json['travel']),
          )
        : null;
  }
}

class GridNavItem {
  final String startColor;
  final String endColor;
  final CommonModel mainItem;
  final CommonModel itme1;
  final CommonModel itme2;
  final CommonModel itme3;
  final CommonModel itme4;

  GridNavItem(
  {this.startColor,
    this.endColor,
    this.mainItem,
    this.itme1,
    this.itme2,
    this.itme3,
    this.itme4});

  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
        startColor: json["startColor"],
        endColor: json['endColor'],
        mainItem: CommonModel.fromJson(json['mainItem']),
        itme1: CommonModel.fromJson(json['itme1']),
        itme2: CommonModel.fromJson(json['itme2']),
        itme3: CommonModel.fromJson(json['itme3']),
        itme4: CommonModel.fromJson(json['itme4'])
    );
  }
}
