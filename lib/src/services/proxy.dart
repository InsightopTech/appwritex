part of appwritex;

class Proxy extends Service {
  Proxy(super.client);

  /// List Proxies (scope:rules.read)
  ///
  /// Get a list of all the proxies in the current team. You can use the query
  @Deprecated('Need scope: rules.read')
  Future<models.RuleList> listRules() async {
    final String apiPath = '/proxy/rules';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'content-type': 'application/json',
    };

    final res = await client.call(HttpMethod.get,
        path: apiPath, params: apiParams, headers: apiHeaders);

    return models.RuleList.fromMap(res.data);
  }
}
