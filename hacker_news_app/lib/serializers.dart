library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hacker_news_app/json_parsing.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Article,
])
Serializers serializers = _$serializers;

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
