import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_go_mobile/domain/auth_user.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';

AuthUser? useAuthUser() {
  final user = useState<AuthUser?>(null);
  final userRepo = UserRepository();

  useEffect(() {
    () async {
      user.value = await userRepo.get();
    }();
    return null;
  }, []);
  return user.value;
}
