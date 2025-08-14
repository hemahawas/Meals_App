// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_meal_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilteredMealResponseModel _$FilteredMealResponseModelFromJson(
  Map<String, dynamic> json,
) => FilteredMealResponseModel(
  meals: (json['meals'] as List<dynamic>?)
      ?.map((e) => FilteredMealModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilteredMealResponseModelToJson(
  FilteredMealResponseModel instance,
) => <String, dynamic>{'meals': instance.meals};
