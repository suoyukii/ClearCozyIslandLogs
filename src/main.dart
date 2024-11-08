import 'dart:io';
import 'language.dart';

void main() {
  var lang = GetLanguage();
  print(lang[0]);
  print(lang[1]);

  // Get path
  var root_path = Directory(
      Platform.environment['appdata'].toString() + '\\..\\LocalLow\\摸鱼工作室');
  var path = Directory(root_path.path + '\\CozyIsland');

  // Remove start
  if (path.existsSync()) {
    var lists = path.listSync();
    for (var li in lists) {
      if (li is File) {
        // Clear logs
        if (li.path.endsWith(".log")) li.deleteSync();
      }
    }
    // Remove directory
    if (path.listSync().length == 0) path.deleteSync();
  }

  if (root_path.existsSync()) {
    // Remove directory
    if (root_path.listSync().length == 0) root_path.deleteSync();
  }

  print(lang[2]);
  stdin.readLineSync();
}
