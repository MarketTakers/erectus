import 'package:directus_core/src/modules/fields/directus_field.dart';
import 'package:directus_core/src/modules/fields/field_converter.dart';
import 'package:test/test.dart';

void main() {
  test('FieldConverter', () {
    final converter = FieldConverter();
    final fieldMap = converter.toJson(
      DirectusField(
        type: DirectusFieldType.boolean,
        field: 'test',
        collection: 'test',
        meta: DirectusFieldMeta(id: 1, required: false, collection: 'hey'),
      ),
    );
    expect(fieldMap, isMap);
    final field = converter.fromJson(fieldMap);
    expect(field, isA<DirectusField>());
  });
}
