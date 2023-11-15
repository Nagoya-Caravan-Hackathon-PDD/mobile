//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'input_create_user.g.dart';

/// InputCreateUser
///
/// Properties:
/// * [githubId] 
@BuiltValue()
abstract class InputCreateUser implements Built<InputCreateUser, InputCreateUserBuilder> {
  @BuiltValueField(wireName: r'github_id')
  String? get githubId;

  InputCreateUser._();

  factory InputCreateUser([void updates(InputCreateUserBuilder b)]) = _$InputCreateUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InputCreateUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InputCreateUser> get serializer => _$InputCreateUserSerializer();
}

class _$InputCreateUserSerializer implements PrimitiveSerializer<InputCreateUser> {
  @override
  final Iterable<Type> types = const [InputCreateUser, _$InputCreateUser];

  @override
  final String wireName = r'InputCreateUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InputCreateUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.githubId != null) {
      yield r'github_id';
      yield serializers.serialize(
        object.githubId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InputCreateUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InputCreateUserBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InputCreateUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputCreateUserBuilder();
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

