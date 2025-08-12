// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealsResponseModel _$MealsResponseModelFromJson(Map<String, dynamic> json) =>
    MealsResponseModel(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealsResponseModelToJson(MealsResponseModel instance) =>
    <String, dynamic>{'meals': instance.meals};
