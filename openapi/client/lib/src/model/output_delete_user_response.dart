//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output_delete_user_response.g.dart';

/// OutputDeleteUserResponse
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class OutputDeleteUserResponse implements Built<OutputDeleteUserResponse, OutputDeleteUserResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  OutputDeleteUserResponse._();

  factory OutputDeleteUserResponse([void updates(OutputDeleteUserResponseBuilder b)]) = _$OutputDeleteUserResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutputDeleteUserResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutputDeleteUserResponse> get serializer => _$OutputDeleteUserResponseSerializer();
}

class _$OutputDeleteUserResponseSerializer implements PrimitiveSerializer<OutputDeleteUserResponse> {
  @override
  final Iterable<Type> types = const [OutputDeleteUserResponse, _$OutputDeleteUserResponse];

  @override
  final String wireName = r'OutputDeleteUserResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutputDeleteUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutputDeleteUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputDeleteUserResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutputDeleteUserResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputDeleteUserResponseBuilder();
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

