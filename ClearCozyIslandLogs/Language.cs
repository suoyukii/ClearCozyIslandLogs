using System.Diagnostics;

namespace ClearCozyIslandLogs;

public static class Language
{
    // public static string[] Get() => CultureInfo.CurrentUICulture.Name switch
    public static string[] Get() => FixGetCultureName() switch
    {
        "zh-cn" =>
        [
            "清除 舒舒服服小岛时光 的日志",
            "清除中...",
            "清除结束，这个窗口可以关闭了"
        ],
        _ =>
        [
            "Clear Cozy Island Logs",
            "Removing...",
            "Remove is complete, the window can be closed."
        ],
    };

    private static string FixGetCultureName()
    {
        var p = new Process
        {
            StartInfo = new ProcessStartInfo
            {
                FileName = "powershell",
                Arguments = "(Get-UICulture).Name",
                RedirectStandardOutput = true,
                UseShellExecute = false,
                CreateNoWindow = true
            }
        };
        p.Start();
        var lang = p.StandardOutput.ReadLine().ToLower();
        p.WaitForExit();
        return lang;
    }
}