part of appwritex.models;

/// Installation List
class InstallationList with EquatableMixin implements Model {
  /// Total number of installations documents that matched your query.
  final int total;

  /// List of installations.
  final List<Installation> installations;

  InstallationList({
    required this.total,
    required this.installations,
  });

  factory InstallationList.fromMap(Map<String, dynamic> map) {
    return InstallationList(
      total: map['total'],
      installations: List<Installation>.from(
          map['installations'].map((i) => Installation.fromMap(i))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "installations": installations.map((i) => i.toMap()).toList(),
    };
  }

  @override
  List<Object> get props => [total, installations];
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/variablelist.php

