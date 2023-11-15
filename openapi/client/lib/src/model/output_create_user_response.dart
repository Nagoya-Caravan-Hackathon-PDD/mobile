//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output_create_user_response.g.dart';

/// OutputCreateUserResponse
///
/// Properties:
/// * [message] - ユーザの情報
@BuiltValue()
abstract class OutputCreateUserResponse implements Built<OutputCreateUserResponse, OutputCreateUserResponseBuilder> {
  /// ユーザの情報
  @BuiltValueField(wireName: r'message')
  String? get message;

  OutputCreateUserResponse._();

  factory OutputCreateUserResponse([void updates(OutputCreateUserResponseBuilder b)]) = _$OutputCreateUserResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutputCreateUserResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutputCreateUserResponse> get serializer => _$OutputCreateUserResponseSerializer();
}

class _$OutputCreateUserResponseSerializer implements PrimitiveSerializer<OutputCreateUserResponse> {
  @override
  final Iterable<Type> types = const [OutputCreateUserResponse, _$OutputCreateUserResponse];

  @override
  final String wireName = r'OutputCreateUserResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutputCreateUserResponse object, {
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
    OutputCreateUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputCreateUserResponseBuilder result,
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
  OutputCreateUserResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputCreateUserResponseBuilder();
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

