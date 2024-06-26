part of appwritex;

extension DatabasesX on Databases {
  /// Get Usage Collection
  ///
  /// Get usage information on a specific collection.
  Future<models.UsageCollection> getCollectionUsage({
    required String databaseId,
    required String collectionId,
    String? range,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/collections/{collectionId}/usage'
            .replaceAll('{databaseId}', databaseId)
            .replaceAll('{collectionId}', collectionId);

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageCollection.fromMap(res.data);
  }

  /// Get Usage Database
  ///
  /// Get usage information on the current project's database.
  Future<models.UsageDatabase> getDatabaseUsage({
    required String databaseId,
    String? range,
  }) async {
    final String apiPath =
        '/databases/{databaseId}/usage'.replaceAll('{databaseId}', databaseId);

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageDatabase.fromMap(res.data);
  }

  /// Get Usage Databases
  ///
  /// Get usage information on all of the current project's databases.
  Future<models.UsageDatabases> getUsage({
    String? range,
  }) async {
    final String apiPath = '/databases/usage';

    final Map<String, dynamic> apiParams = {
      'range': range,
    };

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.UsageDatabases.fromMap(res.data);
  }
}
