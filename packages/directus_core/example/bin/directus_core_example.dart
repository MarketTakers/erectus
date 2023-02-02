import 'package:directus_core/directus_core.dart';
import 'package:directus_core_example/example_core.dart';

class MyArticle {
  MyArticle(this.id);
  int id;
}

class ArticleConverter extends ItemsConverter<MyArticle> {
  @override
  Map<String, Object?> toJson(MyArticle data) {
    return {"id": data.id};
  }

  @override
  MyArticle fromJson(Map<String, Object?> data) {
    return MyArticle(data['id'] as int);
  }
}

Future<void> main(List<String> arguments) async {
  try {
    final sdk = await getSdkSingleton();

    final res = await sdk.items('contacts').readMany(
          filters: Filters(
            {'id': 1},
          ),
          query: Query(limit: 1),
        );
    print(res.data);
  } catch (e) {
    print(e);
  }
}
