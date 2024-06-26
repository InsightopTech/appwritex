part of appwritex;

/// Use this scope need based on the Account module.
class Projects extends Service {
  Projects(super.client);

  /// List Projects (scope: projects.read)
  ///
  /// Get a list of all the projects in the current team. You can use the query
  @Deprecated('Need scope: projects.read')
  Future<models.ProjectList> list() async {
    final String apiPath = '/projects';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.ProjectList.fromMap(res.data);
  }
}
