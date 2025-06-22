import os

fn language() []string {
	locale := os.execute('powershell "(Get-WinSystemLocale).Name"').output.trim('\r\n')
	match locale {
		'zh-CN' {
			return [
				'清除 舒舒服服小岛时光 的日志',
				'清除中...',
				'清除结束，这个窗口可以关闭了',
			]
		}
		else {
			return [
				'Clear Cozy Island Logs',
				'Removing...',
				'Remove is complete, the window can be closed.',
			]
		}
	}
}
