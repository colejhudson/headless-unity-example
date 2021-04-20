using UnityEditor;
using UnityEditor.Build.Reporting;

public class BuildScript {
    public static void Build() {
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[]{
            "Assets/EmptyScene.unity"
        };
        options.locationPathName = "Build/Dev/headless-unity-example";
        options.target = BuildTarget.StandaloneLinux64;
        options.options = BuildOptions.None;

        BuildReport report = BuildPipeline.BuildPlayer(options);
        BuildSummary summary = report.summary;
    }
}