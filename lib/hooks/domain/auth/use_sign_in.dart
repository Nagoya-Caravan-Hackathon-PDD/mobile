import 'package:github_go_mobile/api/client.dart';
import 'package:github_go_mobile/domain/auth_user.dart';
import 'package:github_go_mobile/hooks/helper/use_mutation.dart';
import 'package:github_go_mobile/repositories/auth_repository.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';
import 'package:openapi/openapi.dart';

UseMutationResult<AuthUser, void> useSignIn() {
  final authRepo = AuthRepository();
  final userRepo = UserRepository();

  return useMutation<AuthUser, void>(
    mutateFn: (_) async {
      final authUser = await authRepo.signIn();
      userRepo.save(authUser);
      return authUser;
    },
  );
}
