//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'output_read_user_response.g.dart';

/// OutputReadUserResponse
///
/// Properties:
/// * [githubId] 
/// * [userId] - ユーザの情報
@BuiltValue()
abstract class OutputReadUserResponse implements Built<OutputReadUserResponse, OutputReadUserResponseBuilder> {
  @BuiltValueField(wireName: r'github_id')
  String? get githubId;

  /// ユーザの情報
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  OutputReadUserResponse._();

  factory OutputReadUserResponse([void updates(OutputReadUserResponseBuilder b)]) = _$OutputReadUserResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutputReadUserResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutputReadUserResponse> get serializer => _$OutputReadUserResponseSerializer();
}

class _$OutputReadUserResponseSerializer implements PrimitiveSerializer<OutputReadUserResponse> {
  @override
  final Iterable<Type> types = const [OutputReadUserResponse, _$OutputReadUserResponse];

  @override
  final String wireName = r'OutputReadUserResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutputReadUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.githubId != null) {
      yield r'github_id';
      yield serializers.serialize(
        object.githubId,
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
    OutputReadUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OutputReadUserResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'github_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.githubId = valueDes;
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
  OutputReadUserResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputReadUserResponseBuilder();
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

