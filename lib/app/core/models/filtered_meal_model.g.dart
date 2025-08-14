// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilteredMealModel _$FilteredMealModelFromJson(Map<String, dynamic> json) =>
    FilteredMealModel(
      name: json['strMeal'] as String? ?? 'NA',
      imageUrl: json['strMealThumb'] as String? ?? 'NA',
    );

Map<String, dynamic> _$FilteredMealModelToJson(FilteredMealModel instance) =>
    <String, dynamic>{
      'strMeal': instance.name,
      'strMealThumb': instance.imageUrl,
    };
