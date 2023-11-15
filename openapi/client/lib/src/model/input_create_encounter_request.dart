//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_create_encounter_request.g.dart';

/// InputCreateEncounterRequest
///
/// Properties:
/// * [encountedUserId] 
/// * [userId] 
@BuiltValue()
abstract class InputCreateEncounterRequest implements Built<InputCreateEncounterRequest, InputCreateEncounterRequestBuilder> {
  @BuiltValueField(wireName: r'encounted_user_id')
  String? get encountedUserId;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  InputCreateEncounterRequest._();

  factory InputCreateEncounterRequest([void updates(InputCreateEncounterRequestBuilder b)]) = _$InputCreateEncounterRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InputCreateEncounterRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InputCreateEncounterRequest> get serializer => _$InputCreateEncounterRequestSerializer();
}

class _$InputCreateEncounterRequestSerializer implements PrimitiveSerializer<InputCreateEncounterRequest> {
  @override
  final Iterable<Type> types = const [InputCreateEncounterRequest, _$InputCreateEncounterRequest];

  @override
  final String wireName = r'InputCreateEncounterRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InputCreateEncounterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.encountedUserId != null) {
      yield r'encounted_user_id';
      yield serializers.serialize(
        object.encountedUserId,
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
    InputCreateEncounterRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InputCreateEncounterRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'encounted_user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encountedUserId = valueDes;
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
  InputCreateEncounterRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputCreateEncounterRequestBuilder();
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

