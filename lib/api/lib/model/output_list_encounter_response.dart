//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OutputListEncounterResponse {
  /// Returns a new [OutputListEncounterResponse] instance.
  OutputListEncounterResponse({
    this.createdAt,
    this.encounterId,
    this.encoutedUserId,
    this.userId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encounterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encoutedUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OutputListEncounterResponse &&
    other.createdAt == createdAt &&
    other.encounterId == encounterId &&
    other.encoutedUserId == encoutedUserId &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (encounterId == null ? 0 : encounterId!.hashCode) +
    (encoutedUserId == null ? 0 : encoutedUserId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'OutputListEncounterResponse[createdAt=$createdAt, encounterId=$encounterId, encoutedUserId=$encoutedUserId, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.encounterId != null) {
      json[r'encounter_id'] = this.encounterId;
    } else {
      json[r'encounter_id'] = null;
    }
    if (this.encoutedUserId != null) {
      json[r'encouted_user_id'] = this.encoutedUserId;
    } else {
      json[r'encouted_user_id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    return json;
  }

  /// Returns a new [OutputListEncounterResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputListEncounterResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OutputListEncounterResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OutputListEncounterResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputListEncounterResponse(
        createdAt: mapValueOfType<String>(json, r'created_at'),
        encounterId: mapValueOfType<String>(json, r'encounter_id'),
        encoutedUserId: mapValueOfType<String>(json, r'encouted_user_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<OutputListEncounterResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OutputListEncounterResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputListEncounterResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputListEncounterResponse> mapFromJson(dynamic json) {
    final map = <String, OutputListEncounterResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputListEncounterResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputListEncounterResponse-objects as value to a dart map
  static Map<String, List<OutputListEncounterResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OutputListEncounterResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OutputListEncounterResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

