using System.Globalization;

namespace ClearCozyIslandLogs;

public static class Language
{
    public static string[] Get()
    {
        return CultureInfo.CurrentUICulture.Name switch
        {
            "zh-CN" =>
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
            ]
        };
    }
}