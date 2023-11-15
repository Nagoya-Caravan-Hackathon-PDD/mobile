import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Create User
    //
    // Create User
    //
    //Future<OutputCreateUserResponse> usersPost(InputCreateUser createUser) async
    test('test usersPost', () async {
      // TODO
    });

    // Delete User
    //
    // Delete User
    //
    //Future<OutputDeleteUserResponse> usersUserIdDelete(String userId) async
    test('test usersUserIdDelete', () async {
      // TODO
    });

  });
}
