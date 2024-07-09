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
        // Recorder ����
        RecorderControllerSettings controllerSettings = ScriptableObject.CreateInstance<RecorderControllerSettings>();
        recorderController = new RecorderController(controllerSettings);

        MovieRecorderSettings movieRecorderSettings = ScriptableObject.CreateInstance<MovieRecorderSettings>();
        movieRecorderSettings.name = "Movie Recorder";
        movieRecorderSettings.Enabled = true;
        movieRecorderSettings.OutputFormat = MovieRecorderSettings.VideoRecorderOutputFormat.MP4;
        movieRecorderSettings.VideoBitRateMode = VideoBitrateMode.High;

        // CameraInputSettings ����
        CameraInputSettings cameraInputSettings = new CameraInputSettings
        {
            Source = ImageSource.TaggedCamera,
            CameraTag = "Recorder",
            FlipFinalOutput = false
        };

        movieRecorderSettings.ImageInputSettings = cameraInputSettings;

        movieRecorderSettings.AudioInputSettings.PreserveAudio = true;

        // ���� ��� ���� (�� �̸� ���)
        string assetPath = "Assets/Recordings";
        string sceneName = SceneManager.GetActiveScene().name;
        movieRecorderSettings.OutputFile = $"{assetPath}/{sceneName}";

        controllerSettings.AddRecorderSettings(movieRecorderSettings);
        controllerSettings.SetRecordModeToManual();

        // ��ȭ ����
        recorderController.PrepareRecording();
        recorderController.StartRecording();
    }

    void OnDestroy()
    {
        // ��ȭ ����
        if (recorderController != null && recorderController.IsRecording())
        {
            recorderController.StopRecording();
        }
    }
}
