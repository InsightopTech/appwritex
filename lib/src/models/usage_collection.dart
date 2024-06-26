part of appwritex.models;

/// Usage Collection
class UsageCollection with EquatableMixin implements Model {
  /// Time range of the usage stats.
  final String range;

  /// Total aggregated number of of documents.
  final int documentsTotal;

  /// Aggregated  number of documents per period.
  final List<Metric> documents;

  UsageCollection({
    required this.range,
    required this.documentsTotal,
    required this.documents,
  });

  factory UsageCollection.fromMap(Map<String, dynamic> map) {
    return UsageCollection(
      range: map['range'].toString(),
      documentsTotal: map['documentsTotal'],
      documents:
          List<Metric>.from(map['documents']?.map((p) => Metric.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "range": range,
      "documentsTotal": documentsTotal,
      "documents": documents.map((p) => p.toMap()).toList(),
    };
  }

  @override
  List<Object> get props => [range, documentsTotal, documents];
}

// https://github.com/appwrite/appwrite/blob/main/src/Appwrite/Utopia/Response/Model/UsageCollection.php
// <?php

// namespace Appwrite\Utopia\Response\Model;

// use Appwrite\Utopia\Response;
// use Appwrite\Utopia\Response\Model;

// class UsageCollection extends Model
// {
//     public function __construct()
//     {
//         $this
//             ->addRule('range', [
//                 'type' => self::TYPE_STRING,
//                 'description' => 'Time range of the usage stats.',
//                 'default' => '',
//                 'example' => '30d',
//             ])
//             ->addRule('documentsTotal', [
//                 'type' => self::TYPE_INTEGER,
//                 'description' => 'Total aggregated number of of documents.',
//                 'default' => 0,
//                 'example' => 0,
//             ])
//             ->addRule('documents', [
//                 'type' => Response::MODEL_METRIC,
//                 'description' => 'Aggregated  number of documents per period.',
//                 'default' => [],
//                 'example' => [],
//                 'array' => true
//             ])
//         ;
//     }

//     /**
//      * Get Name
//      *
//      * @return string
//      */
//     public function getName(): string
//     {
//         return 'UsageCollection';
//     }

//     /**
//      * Get Type
//      *
//      * @return string
//      */
//     public function getType(): string
//     {
//         return Response::MODEL_USAGE_COLLECTION;
//     }
// }