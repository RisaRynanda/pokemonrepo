import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  String name;
  String ulr;

  PokemonModel({
    required this.name,
    required this.ulr,
  });

  PokemonModel copyWith({
    String? name,
    String? ulr,
  }) {
    return PokemonModel(
      name: name ?? this.name,
      ulr: ulr ?? this.ulr,
    );
  }

  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);

  factory PokemonModel.fromJson(Map<String, dynamic> map) =>
      _$PokemonModelFromJson(map);

  @override
  String toString() => 'PokemonModel(name: $name, ulr: $ulr)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PokemonModel && other.name == name && other.ulr == ulr;
  }

  @override
  int get hashCode => name.hashCode ^ ulr.hashCode;
}
