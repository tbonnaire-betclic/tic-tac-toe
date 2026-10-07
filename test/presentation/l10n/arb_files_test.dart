import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Keeps every translation in sync with the English template.
void main() {
  const arbDir = 'lib/presentation/l10n/arb';
  Set<String> messageKeys(File file) =>
      (jsonDecode(file.readAsStringSync()) as Map<String, Object?>).keys.where((key) => !key.startsWith('@')).toSet();

  final template = messageKeys(File('$arbDir/app_en.arb'));
  final translations = Directory(arbDir)
      .listSync()
      .whereType<File>()
      .where((file) => !file.path.endsWith('app_en.arb'));

  test('there is at least one translation', () => expect(translations, isNotEmpty));

  for (final file in translations) {
    test('${file.uri.pathSegments.last} has exactly the template messages', () {
      expect(messageKeys(file), template);
    });
  }
}
