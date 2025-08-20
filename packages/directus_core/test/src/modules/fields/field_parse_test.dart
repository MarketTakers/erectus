import 'dart:convert';

import 'package:directus_core/src/modules/fields/directus_field.dart';
import 'package:test/test.dart';

void main() {
  test('FieldParse', () {
    DirectusField.fromJson(
      jsonDecode('''
    {
      "collection": "SkinTransaction",
      "field": "id",
      "type": "integer",
      "schema": {
        "name": "id",
        "table": "SkinTransaction",
        "data_type": "integer",
        "default_value": "",
        "generation_expression": null,
        "max_length": null,
        "numeric_precision": 32,
        "numeric_scale": 0,
        "is_generated": false,
        "is_nullable": false,
        "is_unique": true,
        "is_indexed": false,
        "is_primary_key": true,
        "has_auto_increment": true,
        "foreign_key_schema": null,
        "foreign_key_table": null,
        "foreign_key_column": null,
        "comment": null
      },
      "meta": {
        "id": 46,
        "collection": "SkinTransaction",
        "field": "id",
        "special": null,
        "interface": "input",
        "options": null,
        "display": null,
        "display_options": null,
        "readonly": true,
        "hidden": true,
        "sort": 1,
        "width": "full",
        "translations": null,
        "note": null,
        "conditions": null,
        "required": false,
        "group": null,
        "validation": null,
        "validation_message": null
      }
    }
'''),
    );
  });
}
