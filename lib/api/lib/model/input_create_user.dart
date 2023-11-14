//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InputCreateUser {
  /// Returns a new [InputCreateUser] instance.
  InputCreateUser({
    this.githubId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? githubId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputCreateUser &&
    other.githubId == githubId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (githubId == null ? 0 : githubId!.hashCode);

  @override
  String toString() => 'InputCreateUser[githubId=$githubId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.githubId != null) {
      json[r'github_id'] = this.githubId;
    } else {
      json[r'github_id'] = null;
    }
    return json;
  }

  /// Returns a new [InputCreateUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputCreateUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InputCreateUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InputCreateUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InputCreateUser(
        githubId: mapValueOfType<String>(json, r'github_id'),
      );
    }
    return null;
  }

  static List<InputCreateUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputCreateUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputCreateUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InputCreateUser> mapFromJson(dynamic json) {
    final map = <String, InputCreateUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InputCreateUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InputCreateUser-objects as value to a dart map
  static Map<String, List<InputCreateUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InputCreateUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InputCreateUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

