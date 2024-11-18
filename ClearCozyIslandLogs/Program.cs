using ClearCozyIslandLogs;

// Load language
var langs = Language.Get();
Console.Title = langs[0];

// Get path
var root_path = Environment.GetEnvironmentVariable("appdata") + "../LocalLow/摸鱼工作室";
var path = root_path + "/CozyIsland";
Console.WriteLine(langs[1]);

// Remove start
if (Directory.Exists(path))
{
    var path_dir = new DirectoryInfo(path);
    // Clear logs
    var log_list = path_dir.GetFiles("*.log");
    foreach (var log in log_list) log.Delete();
    // Remove directory
    if (path_dir.GetFiles().Length == 0 && path_dir.GetDirectories().Length == 0) path_dir.Delete();
}

if (Directory.Exists(root_path))
{
    var root_path_dir = new DirectoryInfo(root_path);
    // Remove directory
    if (root_path_dir.GetFiles().Length == 0 && root_path_dir.GetDirectories().Length == 0) root_path_dir.Delete();
}

Console.WriteLine(langs[2]);
Console.ReadLine();