using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEditor;
using UnityEditor.Recorder;
using UnityEditor.Recorder.Input;

public class Recording : MonoBehaviour
{
    private RecorderController recorderController;

    void Start()
    {
        // Recorder 설정
        RecorderControllerSettings controllerSettings = ScriptableObject.CreateInstance<RecorderControllerSettings>();
        recorderController = new RecorderController(controllerSettings);

        MovieRecorderSettings movieRecorderSettings = ScriptableObject.CreateInstance<MovieRecorderSettings>();
        movieRecorderSettings.name = "Movie Recorder";
        movieRecorderSettings.Enabled = true;
        movieRecorderSettings.OutputFormat = MovieRecorderSettings.VideoRecorderOutputFormat.MP4;
        movieRecorderSettings.VideoBitRateMode = VideoBitrateMode.High;

        // CameraInputSettings 설정
        CameraInputSettings cameraInputSettings = new CameraInputSettings
        {
            Source = ImageSource.TaggedCamera,
            CameraTag = "Recorder",
            FlipFinalOutput = false
        };

        movieRecorderSettings.ImageInputSettings = cameraInputSettings;

        movieRecorderSettings.AudioInputSettings.PreserveAudio = true;

        // 파일 경로 설정 (씬 이름 사용)
        string assetPath = "Assets/Recordings";
        string sceneName = SceneManager.GetActiveScene().name;
        movieRecorderSettings.OutputFile = $"{assetPath}/{sceneName}";

        controllerSettings.AddRecorderSettings(movieRecorderSettings);
        controllerSettings.SetRecordModeToManual();

        // 녹화 시작
        recorderController.PrepareRecording();
        recorderController.StartRecording();
    }

    void OnDestroy()
    {
        // 녹화 중지
        if (recorderController != null && recorderController.IsRecording())
        {
            recorderController.StopRecording();
        }
    }
}
