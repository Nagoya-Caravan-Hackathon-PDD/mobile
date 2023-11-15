//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output_create_encounter_response.g.dart';

/// OutputCreateEncounterResponse
///
/// Properties:
/// * [encounterId] 
@BuiltValue()
abstract class OutputCreateEncounterResponse implements Built<OutputCreateEncounterResponse, OutputCreateEncounterResponseBuilder> {
  @BuiltValueField(wireName: r'encounter_id')
  String? get encounterId;

  OutputCreateEncounterResponse._();

  factory OutputCreateEncounterResponse([void updates(OutputCreateEncounterResponseBuilder b)]) = _$OutputCreateEncounterResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutputCreateEncounterResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutputCreateEncounterResponse> get serializer => _$OutputCreateEncounterResponseSerializer();
}

class _$OutputCreateEncounterResponseSerializer implements PrimitiveSerializer<OutputCreateEncounterResponse> {
  @override
  final Iterable<Type> types = const [OutputCreateEncounterResponse, _$OutputCreateEncounterResponse];

  @override
  final String wireName = r'OutputCreateEncounterResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutputCreateEncounterResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.encounterId != null) {
      yield r'encounter_id';
      yield serializers.serialize(
        object.encounterId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutputCreateEncounterResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputCreateEncounterResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'encounter_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encounterId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutputCreateEncounterResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputCreateEncounterResponseBuilder();
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

