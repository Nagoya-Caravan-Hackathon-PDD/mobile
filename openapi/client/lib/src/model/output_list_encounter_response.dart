//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output_list_encounter_response.g.dart';

/// OutputListEncounterResponse
///
/// Properties:
/// * [createdAt] 
/// * [encounterId] 
/// * [encoutedUserId] 
/// * [userId] 
@BuiltValue()
abstract class OutputListEncounterResponse implements Built<OutputListEncounterResponse, OutputListEncounterResponseBuilder> {
  @BuiltValueField(wireName: r'created_at')
  String? get createdAt;

  @BuiltValueField(wireName: r'encounter_id')
  String? get encounterId;

  @BuiltValueField(wireName: r'encouted_user_id')
  String? get encoutedUserId;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  OutputListEncounterResponse._();

  factory OutputListEncounterResponse([void updates(OutputListEncounterResponseBuilder b)]) = _$OutputListEncounterResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutputListEncounterResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutputListEncounterResponse> get serializer => _$OutputListEncounterResponseSerializer();
}

class _$OutputListEncounterResponseSerializer implements PrimitiveSerializer<OutputListEncounterResponse> {
  @override
  final Iterable<Type> types = const [OutputListEncounterResponse, _$OutputListEncounterResponse];

  @override
  final String wireName = r'OutputListEncounterResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutputListEncounterResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.encounterId != null) {
      yield r'encounter_id';
      yield serializers.serialize(
        object.encounterId,
        specifiedType: const FullType(String),
      );
    }
    if (object.encoutedUserId != null) {
      yield r'encouted_user_id';
      yield serializers.serialize(
        object.encoutedUserId,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutputListEncounterResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputListEncounterResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'encounter_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encounterId = valueDes;
          break;
        case r'encouted_user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encoutedUserId = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutputListEncounterResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputListEncounterResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

