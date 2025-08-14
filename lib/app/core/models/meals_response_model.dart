import 'package:json_annotation/json_annotation.dart';
import 'package:mdlabs_intern_task1/app/core/models/home_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/meal_model.dart';

part 'meals_response_model.g.dart';

@JsonSerializable()
class MealsResponseModel extends HomeResponseModel {
  @JsonKey(includeIfNull: true)
  List<MealModel>? meals;
  MealsResponseModel({required this.meals});

  factory MealsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MealsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$MealsResponseModelToJson(this);
}
