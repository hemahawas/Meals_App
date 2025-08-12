// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealModel _$MealModelFromJson(Map<String, dynamic> json) => MealModel(
  id: json['idMeal'] as String? ?? 'NA',
  name: json['strMeal'] as String? ?? 'NA',
  category: json['strCategory'] as String? ?? 'NA',
  area: json['strArea'] as String? ?? 'NA',
  imageUrl: json['strMealThumb'] as String? ?? 'NA',
  description: json['strInstructions'] as String? ?? 'NA',
);

Map<String, dynamic> _$MealModelToJson(MealModel instance) => <String, dynamic>{
  'idMeal': instance.id,
  'strMeal': instance.name,
  'strCategory': instance.category,
  'strArea': instance.area,
  'strMealThumb': instance.imageUrl,
  'strInstructions': instance.description,
};
