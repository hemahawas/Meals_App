import 'package:json_annotation/json_annotation.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/home_response_model.dart';

part 'filtered_meal_response_model.g.dart';

@JsonSerializable()
class FilteredMealResponseModel extends HomeResponseModel {
  @JsonKey(includeIfNull: true)
  List<FilteredMealModel>? meals;
  FilteredMealResponseModel({required this.meals});

  factory FilteredMealResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FilteredMealResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$FilteredMealResponseModelToJson(this);
}
