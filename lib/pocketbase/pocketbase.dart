import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:pocketbase/pocketbase.dart' show PocketBase;

part 'pocketbase.g.dart';

@riverpod
PocketBase pocketbase(Ref ref) {
  return PocketBase('http://127.0.0.1:8090/');
}
