import os

fn main() {
	// Load language
	mut langs := language()
	println(langs[0])

	// Get path
	appdata := os.getenv('APPDATA')
	mut root_path := os.join_path(appdata, '../LocalLow/摸鱼工作室')
	path := os.join_path(root_path, 'CozyIsland')
	println(langs[1])

	// Remove start
	if os.exists(path) {
		// Clear logs
		mut log_list := os.glob(os.join_path(path, '*.log')) or { []string{} }
		for log in log_list {
			os.rm(os.join_path(path, log)) or {}
		}

		// Check if directory is empty
		mut files := os.ls(path) or { []string{} }
		if files.len == 0 {
			// Remove directory if empty
			os.rmdir(path) or {}
		}
	}

	if os.exists(root_path) {
		// Check if directory is empty
		mut files := os.ls(root_path) or { []string{} }
		if files.len == 0 {
			// Remove directory if empty
			os.rmdir(root_path) or {}
		}
	}

	println(langs[2])
	_ := os.input('')
}
