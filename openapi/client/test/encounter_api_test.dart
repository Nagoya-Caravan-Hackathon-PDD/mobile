import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for EncounterApi
void main() {
  final instance = Openapi().getEncounterApi();

  group(EncounterApi, () {
    // Get All Encounters
    //
    // Get All Encounters
    //
    //Future<OutputListEncounterResponse> encountersEncounterIdGet(String encounterId) async
    test('test encountersEncounterIdGet', () async {
      // TODO
    });

    // Get All Encounters
    //
    // Get All Encounters
    //
    //Future<BuiltList<OutputListEncounterResponse>> encountersGet({ int pageID, int pageSize, String userID }) async
    test('test encountersGet', () async {
      // TODO
    });

    // Create Encounter
    //
    // Create Encount entory
    //
    //Future<OutputCreateEncounterResponse> encountersPost(InputCreateEncounterRequest createEncounterRequest) async
    test('test encountersPost', () async {
      // TODO
    });

  });
}
