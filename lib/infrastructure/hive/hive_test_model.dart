import 'package:hive_flutter/hive_flutter.dart';

part 'hive_test_model.g.dart';

@HiveType(typeId: 0)
class HiveTestModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  List<String> contents;

  HiveTestModel(this.title, this.description, this.contents);
}