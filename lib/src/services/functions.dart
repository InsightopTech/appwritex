part of appwritex;

extension FunctionsX on Functions {
  /// Get Usage Function
  ///
  /// Get usage information on a specific function.
  Future<models.UsageFunction> getFunctionUsage({
    required String functionId,
    String? range,
  }) async {
    final String apiPath =
        '/functions/{functionId}/usage'.replaceAll('{functionId}', functionId);

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageFunction.fromMap(res.data);
  }

  /// Get Usage Functions
  ///
  /// Get usage information on all of the current project's functions.
  Future<models.UsageFunctions> getUsage({
    String? range,
  }) async {
    final String apiPath = '/functions/usage';

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageFunctions.fromMap(res.data);
  }
}
