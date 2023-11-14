//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EncounterApi {
  EncounterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get All Encounters
  ///
  /// Get All Encounters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] encounterId (required):
  ///   list encounter request
  Future<Response> encountersEncounterIdGetWithHttpInfo(String encounterId,) async {
    // ignore: prefer_const_declarations
    final path = r'/encounters/{encounter_id}'
      .replaceAll('{encounter_id}', encounterId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get All Encounters
  ///
  /// Get All Encounters
  ///
  /// Parameters:
  ///
  /// * [String] encounterId (required):
  ///   list encounter request
  Future<OutputListEncounterResponse?> encountersEncounterIdGet(String encounterId,) async {
    final response = await encountersEncounterIdGetWithHttpInfo(encounterId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OutputListEncounterResponse',) as OutputListEncounterResponse;
    
    }
    return null;
  }

  /// Get All Encounters
  ///
  /// Get All Encounters
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageID:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] userID:
  Future<Response> encountersGetWithHttpInfo({ int? pageID, int? pageSize, String? userID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/encounters';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageID != null) {
      queryParams.addAll(_queryParams('', 'pageID', pageID));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (userID != null) {
      queryParams.addAll(_queryParams('', 'userID', userID));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get All Encounters
  ///
  /// Get All Encounters
  ///
  /// Parameters:
  ///
  /// * [int] pageID:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] userID:
  Future<List<OutputListEncounterResponse>?> encountersGet({ int? pageID, int? pageSize, String? userID, }) async {
    final response = await encountersGetWithHttpInfo( pageID: pageID, pageSize: pageSize, userID: userID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OutputListEncounterResponse>') as List)
        .cast<OutputListEncounterResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Encounter
  ///
  /// Create Encount entory
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InputCreateEncounterRequest] createEncounterRequest (required):
  ///   create encounter request
  Future<Response> encountersPostWithHttpInfo(InputCreateEncounterRequest createEncounterRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/encounters';

    // ignore: prefer_final_locals
    Object? postBody = createEncounterRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Encounter
  ///
  /// Create Encount entory
  ///
  /// Parameters:
  ///
  /// * [InputCreateEncounterRequest] createEncounterRequest (required):
  ///   create encounter request
  Future<OutputCreateEncounterResponse?> encountersPost(InputCreateEncounterRequest createEncounterRequest,) async {
    final response = await encountersPostWithHttpInfo(createEncounterRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OutputCreateEncounterResponse',) as OutputCreateEncounterResponse;
    
    }
    return null;
  }
}
