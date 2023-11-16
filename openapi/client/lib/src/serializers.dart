//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/input_create_encounter_request.dart';
import 'package:openapi/src/model/input_create_user.dart';
import 'package:openapi/src/model/output_create_encounter_response.dart';
import 'package:openapi/src/model/output_create_user_response.dart';
import 'package:openapi/src/model/output_delete_user_response.dart';
import 'package:openapi/src/model/output_list_encounter_response.dart';
import 'package:openapi/src/model/output_read_user_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  InputCreateEncounterRequest,
  InputCreateUser,
  OutputCreateEncounterResponse,
  OutputCreateUserResponse,
  OutputDeleteUserResponse,
  OutputListEncounterResponse,
  OutputReadUserResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(OutputListEncounterResponse)]),
        () => ListBuilder<OutputListEncounterResponse>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
