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


# **usersPost**
> OutputCreateUserResponse usersPost(createUser)

Create User

Create User

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final createUser = InputCreateUser(); // InputCreateUser | create user request

try {
    final result = api_instance.usersPost(createUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

final api_instance = UserApi();
final userId = userId_example; // String | create user request

try {
    final result = api_instance.usersUserIdDelete(userId);
    print(result);
} catch (e) {
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

