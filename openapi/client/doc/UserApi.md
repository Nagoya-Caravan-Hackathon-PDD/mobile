# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersPost**](UserApi.md#userspost) | **POST** /users | Create User
[**usersUserIdDelete**](UserApi.md#usersuseriddelete) | **DELETE** /users/{user_id} | Delete User
[**usersUserIdGet**](UserApi.md#usersuseridget) | **GET** /users/{user_id} | Get User


# **usersPost**
> OutputCreateUserResponse usersPost(authorization, createUser)

Create User

Create User

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String authorization = authorization_example; // String | Authorization
final InputCreateUser createUser = ; // InputCreateUser | create user request

try {
    final response = api.usersPost(authorization, createUser);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | 
 **createUser** | [**InputCreateUser**](InputCreateUser.md)| create user request | 

### Return type

[**OutputCreateUserResponse**](OutputCreateUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdDelete**
> OutputDeleteUserResponse usersUserIdDelete(userId)

Delete User

Delete User

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String userId = userId_example; // String | create user request

try {
    final response = api.usersUserIdDelete(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| create user request | 

### Return type

[**OutputDeleteUserResponse**](OutputDeleteUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdGet**
> OutputReadUserResponse usersUserIdGet(authorization, userId)

Get User

Get any User

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String authorization = authorization_example; // String | Authorization
final String userId = userId_example; // String | create user request

try {
    final response = api.usersUserIdGet(authorization, userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | 
 **userId** | **String**| create user request | 

### Return type

[**OutputReadUserResponse**](OutputReadUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

