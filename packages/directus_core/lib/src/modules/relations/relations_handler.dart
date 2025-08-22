import 'package:dio/dio.dart';
import 'package:directus_core/src/data_classes/data_classes.dart';
import 'package:directus_core/src/modules/items/items_handler.dart';

import 'directus_relation.dart';
import 'relation_converter.dart';

class RelationsHandler extends ItemsHandler<DirectusRelation> {
  RelationsHandler({required Dio client})
      : super(
          'directus_relations',
          client: client,
          converter: RelationConverter(),
        );

  /// List relations in a specific collection
  ///
  /// Returns all relations for a given collection.
  /// 
  /// [collection] - The name of the collection to get relations for
  /// [query] - Optional query parameters for filtering and pagination
  Future<DirectusListResponse<DirectusRelation>> readByCollection(
    String collection, {
    Query? query,
  }) async {
    return DirectusListResponse.fromRequest(
      () => client.get(
        'relations/$collection',
        queryParameters: query?.toMap(),
      ),
      converter: converter,
    );
  }
}
