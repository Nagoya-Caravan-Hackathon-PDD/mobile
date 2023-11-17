import 'package:github_go_mobile/api/client.dart';
import 'package:github_go_mobile/hooks/helper/use_mutation.dart';
import 'package:github_go_mobile/repositories/auth_repository.dart';
import 'package:github_go_mobile/repositories/user_repository.dart';
import 'package:openapi/openapi.dart';

UseMutationResult<OutputCreateEncounterResponse?, String>
    useCreateEncounterMutation() {
  final encounterRepo = ApiClient().getEncounterApi();
  final userRepo = UserRepository();

  return useMutation<OutputCreateEncounterResponse?, String>(
    mutateFn: (encounteredUserId) async {
      final user = await userRepo.get();
      if (user == null) {
        throw Exception('Not found auth user');
      }
      final request = InputCreateEncounterRequest((builder) => builder
        ..encountedUserId = encounteredUserId
        ..userId = user.uid);

      final res = await encounterRepo.encountersPost(
          authorization: "Bearer ${user.token}",
          createEncounterRequest: request);
      return res.data;
    },
  );
}
