# openapi.api.EncounterApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**encountersEncounterIdGet**](EncounterApi.md#encountersencounteridget) | **GET** /encounters/{encounter_id} | Get All Encounters
[**encountersGet**](EncounterApi.md#encountersget) | **GET** /encounters | Get All Encounters
[**encountersPost**](EncounterApi.md#encounterspost) | **POST** /encounters | Create Encounter


# **encountersEncounterIdGet**
> OutputListEncounterResponse encountersEncounterIdGet(authorization, encounterId)

Get All Encounters

Get All Encounters

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getEncounterApi();
final String authorization = authorization_example; // String | Authorization
final String encounterId = encounterId_example; // String | list encounter request

try {
    final response = api.encountersEncounterIdGet(authorization, encounterId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EncounterApi->encountersEncounterIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | 
 **encounterId** | **String**| list encounter request | 

### Return type

[**OutputListEncounterResponse**](OutputListEncounterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **encountersGet**
> BuiltList<OutputListEncounterResponse> encountersGet(authorization, pageID, pageSize, userID)

Get All Encounters

Get All Encounters

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getEncounterApi();
final String authorization = authorization_example; // String | Authorization
final int pageID = 56; // int | 
final int pageSize = 56; // int | 
final String userID = userID_example; // String | 

try {
    final response = api.encountersGet(authorization, pageID, pageSize, userID);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EncounterApi->encountersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | 
 **pageID** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **userID** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;OutputListEncounterResponse&gt;**](OutputListEncounterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **encountersPost**
> OutputCreateEncounterResponse encountersPost(authorization, createEncounterRequest)

Create Encounter

Create Encount entory

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getEncounterApi();
final String authorization = authorization_example; // String | Authorization
final InputCreateEncounterRequest createEncounterRequest = ; // InputCreateEncounterRequest | create encounter request

try {
    final response = api.encountersPost(authorization, createEncounterRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EncounterApi->encountersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | 
 **createEncounterRequest** | [**InputCreateEncounterRequest**](InputCreateEncounterRequest.md)| create encounter request | 

### Return type

[**OutputCreateEncounterResponse**](OutputCreateEncounterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

