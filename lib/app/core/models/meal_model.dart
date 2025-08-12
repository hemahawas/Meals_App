import 'package:json_annotation/json_annotation.dart';

part 'meal_model.g.dart';

// Build command: flutter pub run build_runner build
// This command generates the meal_model.g.dart file which contains the serialization logic.

@JsonSerializable()
class MealModel {
  @JsonKey(name: 'idMeal', defaultValue: 'NA', includeIfNull: true)
  final String id;
  @JsonKey(name: 'strMeal', defaultValue: 'NA', includeIfNull: true)
  final String name;
  @JsonKey(name: 'strCategory', defaultValue: 'NA', includeIfNull: true)
  final String category;
  @JsonKey(name: 'strArea', defaultValue: 'NA', includeIfNull: true)
  final String area;
  @JsonKey(name: 'strMealThumb', defaultValue: 'NA', includeIfNull: true)
  final String imageUrl;
  @JsonKey(name: 'strInstructions', defaultValue: 'NA', includeIfNull: true)
  final String description;

  MealModel({
    required this.id,
    required this.name,
    required this.category,
    required this.area,
    required this.imageUrl,
    required this.description,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
  Map<String, dynamic> toJson() => _$MealModelToJson(this);
}
