import 'package:github_go_mobile/api/client.dart';
import 'package:github_go_mobile/hooks/helper/use_mutation.dart';
import 'package:github_go_mobile/repositories/auth_repository.dart';
import 'package:openapi/openapi.dart';

UseMutationResult<OutputCreateEncounterResponse?, String>
    useCreateEncounterMutation() {
  final encounterRepo = ApiClient().getEncounterApi();
  final authRepo = AuthRepository();

  return useMutation<OutputCreateEncounterResponse?, String>(
    mutateFn: (encounteredUserId) async {
      final credential = await authRepo.getCredential();
      if (credential == null) {
        throw Exception('Credential is not found');
      }
      final request = InputCreateEncounterRequest((builder) => builder
        ..encountedUserId = encounteredUserId
        ..userId = credential.userId);

      final res =
          await encounterRepo.encountersPost(createEncounterRequest: request);
      return res.data;
    },
  );
}
