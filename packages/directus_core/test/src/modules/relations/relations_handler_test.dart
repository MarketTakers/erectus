import 'package:directus_core/src/data_classes/data_classes.dart';
import 'package:directus_core/src/modules/items/items_handler.dart';
import 'package:directus_core/src/modules/relations/relations_handler.dart';
import 'package:directus_core/src/modules/relations/directus_relation.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../mock/mock_dio_response.dart';
import '../../mock/mocks.mocks.dart';

void main() {
  group('RelationsHandler', () {
    late MockDio client;
    late RelationsHandler relations;
    late Map<String, dynamic> exampleRelation;

    setUp(() {
      client = MockDio();
      relations = RelationsHandler(client: client);
      exampleRelation = {
        'id': 1,
        'many_collection': 'articles',
        'many_field': 'author',
        'one_collection': 'authors',
        'one_field': 'id',
      };
    });

    test('that RelationsHandler extends ItemsHandler.', () async {
      expect(relations, isA<ItemsHandler>());
    });

    test('readByCollection works properly', () async {
      when(client.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer(dioResponse({
        'data': [exampleRelation]
      }));

      final response = await relations.readByCollection('articles');

      expect(response, isA<DirectusListResponse>());
      expect(response.data, hasLength(1));
      expect(response.data.first, isA<DirectusRelation>());
      verify(client.get('relations/articles', queryParameters: null))
          .called(1);
    });

    test('readByCollection with query works properly', () async {
      when(client.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer(dioResponse({
        'data': [exampleRelation]
      }));

      final query = Query(limit: 5);
      final response = await relations.readByCollection('articles', query: query);

      expect(response, isA<DirectusListResponse>());
      expect(response.data, hasLength(1));
      expect(response.data.first, isA<DirectusRelation>());
      verify(client.get('relations/articles', queryParameters: query.toMap()))
          .called(1);
    });
  });
}
