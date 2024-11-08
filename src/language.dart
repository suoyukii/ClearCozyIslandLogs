import 'dart:io';

List<String> GetLanguage() {
  switch (Platform.localeName) {
    case 'zh-CN':
      return ['清除 CozyIsland 日志', '清除中...', '清除结束，这个窗口可以关闭了'];
    default:
      return [
        'Clear CozyIsland Logs',
        'Removing...',
        'Remove is complete, the window can be closed.'
      ];
  }
}
