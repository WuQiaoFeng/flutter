//活动入口模型

import 'package:qiaofengnew/model/common_model.dart';

class SalesBoxModel {
  final String icon;
  final String moriUrl;
  final CommonModel bigCard1;
  final CommonModel bigCard2;
  final CommonModel smallCard1;
  final CommonModel smallCard2;
  final CommonModel smallCard3;
  final CommonModel smallCard4;

  SalesBoxModel(
      {this.icon,
      this.moriUrl,
      this.bigCard1,
      this.bigCard2,
      this.smallCard1,
      this.smallCard2,
      this.smallCard3,
      this.smallCard4});

  factory SalesBoxModel.fromeJson(Map<String, dynamic> json) {
    return SalesBoxModel(
      icon: json['icon'],
      moriUrl: json['moriUrl'],
      bigCard1: CommonModel.fromJson(json['bigCard1']),
      bigCard2: CommonModel.fromJson(json['bigCard2']),
      smallCard1: CommonModel.fromJson(json['smallCard1']),
      smallCard2: CommonModel.fromJson(json['smallCard2']),
      smallCard3: CommonModel.fromJson(json['smallCard3']),
      smallCard4: CommonModel.fromJson(json['smallCard4']),
    );
  }
}
