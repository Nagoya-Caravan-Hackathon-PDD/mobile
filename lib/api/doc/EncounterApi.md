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
> OutputListEncounterResponse encountersEncounterIdGet(encounterId)

Get All Encounters

Get All Encounters

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EncounterApi();
final encounterId = encounterId_example; // String | list encounter request

try {
    final result = api_instance.encountersEncounterIdGet(encounterId);
    print(result);
} catch (e) {
    print('Exception when calling EncounterApi->encountersEncounterIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> List<OutputListEncounterResponse> encountersGet(pageID, pageSize, userID)

Get All Encounters

Get All Encounters

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EncounterApi();
final pageID = 56; // int | 
final pageSize = 56; // int | 
final userID = userID_example; // String | 

try {
    final result = api_instance.encountersGet(pageID, pageSize, userID);
    print(result);
} catch (e) {
    print('Exception when calling EncounterApi->encountersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageID** | **int**|  | [optional] 
 **pageSize** | **int**|  | [optional] 
 **userID** | **String**|  | [optional] 

### Return type

[**List<OutputListEncounterResponse>**](OutputListEncounterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **encountersPost**
> OutputCreateEncounterResponse encountersPost(createEncounterRequest)

Create Encounter

Create Encount entory

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EncounterApi();
final createEncounterRequest = InputCreateEncounterRequest(); // InputCreateEncounterRequest | create encounter request

try {
    final result = api_instance.encountersPost(createEncounterRequest);
    print(result);
} catch (e) {
    print('Exception when calling EncounterApi->encountersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEncounterRequest** | [**InputCreateEncounterRequest**](InputCreateEncounterRequest.md)| create encounter request | 

### Return type

[**OutputCreateEncounterResponse**](OutputCreateEncounterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

