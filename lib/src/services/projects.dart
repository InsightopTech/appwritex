import 'package:dart_appwrite/src/service.dart';
import 'package:dart_appwrite/src/enums.dart';
import '../models/models.dart' as models;

/// Use this scope need based on the Account module.
class Projects extends Service {
  Projects(super.client);

  /// List Projects (scp: projects.read)
  ///
  /// Get a list of all the projects in the current team. You can use the query
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
