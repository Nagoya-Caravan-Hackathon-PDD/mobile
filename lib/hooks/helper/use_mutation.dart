import 'package:flutter_hooks/flutter_hooks.dart';

// NOTE: mutateFnの戻り値の型と、mutateの引数の型をgenericにする
class UseMutationResult<T, P> {
  final T? data;
  final bool isLoading;
  final Exception? error;
  final Future<void> Function({P params, MutationOption<T>? option}) mutate;
  final bool hasError;

  UseMutationResult({
    required this.data,
    required this.isLoading,
    required this.error,
    required this.mutate,
    required this.hasError,
  });
}

typedef MutationFunction<T, P> = Future<T> Function(P);

class MutationOption<T> {
  final void Function(T) onSuccess;
  final void Function(Exception) onError;

  MutationOption({
    required this.onSuccess,
    required this.onError,
  });
}

UseMutationResult<T, P> useMutation<T, P>({
  required MutationFunction<T, P> mutateFn,
}) {
  final data = useState<T?>(null);
  final isLoading = useState(false);
  final error = useState<Exception?>(null);
  final hasError = useState(false);

  Future<void> mutate({params, MutationOption<T>? option}) async {
    isLoading.value = true;
    error.value = null;
    hasError.value = false;
    try {
      final res = await mutateFn(params);
      data.value = res;
      if (option?.onSuccess != null) option!.onSuccess(res);
    } on Exception catch (e) {
      error.value = e;
      if (option?.onError != null) option!.onError(e);
    } finally {
      isLoading.value = false;
    }
  }

  return UseMutationResult(
      data: data.value,
      isLoading: isLoading.value,
      error: error.value,
      mutate: mutate,
      hasError: hasError.value);
}
