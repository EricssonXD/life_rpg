// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'quests_model.freezed.dart';
part 'quests_model.g.dart';

@collection
@freezed
class Quest with _$Quest {
  const factory Quest({
    required int id,
    @Index(hash: true, unique: true) required String name,
    @Default('') String description,
  }) = _Quest;
  const Quest._();

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}
