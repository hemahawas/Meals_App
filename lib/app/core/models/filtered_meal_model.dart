import 'package:json_annotation/json_annotation.dart';

part 'filtered_meal_model.g.dart';

@JsonSerializable()
class FilteredMealModel {
  @JsonKey(name: 'strMeal', defaultValue: 'NA', includeIfNull: true)
  final String name;
  @JsonKey(name: 'strMealThumb', defaultValue: 'NA', includeIfNull: true)
  final String imageUrl;

  FilteredMealModel({required this.name, required this.imageUrl});

  factory FilteredMealModel.fromJson(Map<String, dynamic> json) =>
      _$FilteredMealModelFromJson(json);

  Map<String, dynamic> toJson() => _$FilteredMealModelToJson(this);
}
