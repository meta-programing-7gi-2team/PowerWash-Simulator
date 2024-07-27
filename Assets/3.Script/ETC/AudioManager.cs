using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[Serializable]
public class Sound
{
    public string name;
    public AudioClip clip;
}

public class AudioManager : MonoBehaviour
{
    public static AudioManager instance = null;

    private float masterVolume = 1.0f;
    private float waterVolume = 1.0f;
    private float uiVolume = 1.0f;
    private float walkVolume = 1.0f;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
        AutoSetting();
    }

    [Header("Audio Slider")]
    [SerializeField] private Slider masterVolumeSlider;
    [SerializeField] private Slider waterVolumeSlider;
    [SerializeField] private Slider uiVolumeSlider;
    [SerializeField] private Slider walkVolumeSlider;
    [Header("Audio Clip")]
    [Space(50f)]
    [SerializeField] private Sound[] BGM;
    [SerializeField] private Sound[] SFX;
    [Header("Audio Source")]
    [Space(50f)]
    [SerializeField] private AudioSource BGMPlayer;
    [SerializeField] private AudioSource[] SFXPlayer_Water;
    [SerializeField] private AudioSource[] SFXPlayer_UI;
    [SerializeField] private AudioSource[] SFXPlayer_Walk;

    private void AutoSetting()
    {
        transform.GetChild(0).TryGetComponent(out BGMPlayer);
        SFXPlayer_Water = transform.GetChild(1).GetComponents<AudioSource>();
        SFXPlayer_UI = transform.GetChild(2).GetComponents<AudioSource>();
        SFXPlayer_Walk = transform.GetChild(3).GetComponents<AudioSource>();
    }

    public void Play_BGM(string name)
    {
        foreach (Sound s in BGM)
        {
            if (s.name.Equals(name))
            {
                BGMPlayer.clip = s.clip;
                BGMPlayer.Play();
                return;
            }
        }
        Debug.Log($"{name}이 없습니다.");
    }

    public void Stop_BGM()
    {
        BGMPlayer.Stop();
    }

    public void PlaySFX_Water(string name, bool loop = false)
    {
        foreach (Sound s in SFX)
        {
            if (s.name.Equals(name))
            {
                for (int i = 0; i < SFXPlayer_Water.Length; i++)
                {
                    if (SFXPlayer_Water[i].isPlaying && SFXPlayer_Water[i].clip == s.clip)
                    {
                        return;
                    }
                }

                for (int i = 0; i < SFXPlayer_Water.Length; i++)
                {
                    if (!SFXPlayer_Water[i].isPlaying)
                    {
                        SFXPlayer_Water[i].clip = s.clip;
                        SFXPlayer_Water[i].loop = loop;
                        SFXPlayer_Water[i].Play();
                        return;
                    }
                }
                return;
            }
        }
        return;
    }

    public void PlaySFX_Water_Stop()
    {
        for (int i = 0; i < SFXPlayer_Water.Length; i++)
        {
            SFXPlayer_Water[i].Stop();
        }
    }

    public void PlaySFX_UI(string name)
    {
        foreach (Sound s in SFX)
        {
            if (s.name.Equals(name))
            {
                for (int i = 0; i < SFXPlayer_UI.Length; i++)
                {
                    if (!SFXPlayer_UI[i].isPlaying)
                    {
                        SFXPlayer_UI[i].clip = s.clip;
                        SFXPlayer_UI[i].Play();
                        return;
                    }
                }
                Debug.Log("모든 플레이어가 재생 중 입니다...");
                return;
            }
        }
        Debug.Log($"PlaySFX -> {name}이 없습니다.");
    }

    public void PlaySFX_Walk(string name)
    {
        foreach (Sound s in SFX)
        {
            if (s.name.Equals(name))
            {
                for (int i = 0; i < SFXPlayer_Walk.Length; i++)
                {
                    if (SFXPlayer_Walk[i].isPlaying && SFXPlayer_Walk[i].clip == s.clip)
                    {
                        return;
                    }
                }

                for (int i = 0; i < SFXPlayer_Walk.Length; i++)
                {
                    if (!SFXPlayer_Walk[i].isPlaying)
                    {
                        SFXPlayer_Walk[i].clip = s.clip;
                        SFXPlayer_Walk[i].Play();
                        return;
                    }
                }
                return;
            }
        }
        Debug.Log($"PlaySFX -> {name}이 없습니다.");
    }

    public void PlaySFX_Walk_AllStop()
    {
        for (int i = 0; i < SFXPlayer_Walk.Length; i++)
        {
            if(SFXPlayer_Walk[i].isPlaying)
            {
                SFXPlayer_Walk[i].Stop();
            }
        }
    }
    public void PlaySFX_Walk_Stop(string name)
    {
        foreach (Sound s in SFX)
        {
            if (s.name.Equals(name))
            {
                for (int i = 0; i < SFXPlayer_Walk.Length; i++)
                {
                    if (SFXPlayer_Walk[i].isPlaying && SFXPlayer_Walk[i].clip == s.clip)
                    {
                        SFXPlayer_Walk[i].Stop();
                        return;
                    }
                }
                return;
            }
        }
    }

    public void SetMasterVolume(float volume)
    {
        masterVolume = volume;
        UpdateVolumes();
    }

    public void SetSFXVolume_Water(float volume)
    {
        waterVolume = volume;
        UpdateVolumes();
    }

    public void SetSFXVolume_UI(float volume)
    {
        uiVolume = volume;
        UpdateVolumes();
    }

    public void SetSFXVolume_Walk(float volume)
    {
        walkVolume = volume;
        UpdateVolumes();
    }

    private void UpdateVolumes()
    {
        foreach (AudioSource source in SFXPlayer_Water)
        {
            source.volume = masterVolume * waterVolume;
        }

        foreach (AudioSource source in SFXPlayer_UI)
        {
            source.volume = masterVolume * uiVolume;
        }

        foreach (AudioSource source in SFXPlayer_Walk)
        {
            source.volume = masterVolume * walkVolume;
        }
    }

    public void ResetAllVolumes()
    {
        SetMasterVolume(1);
        SetSFXVolume_Water(1);
        SetSFXVolume_UI(1);
        SetSFXVolume_Walk(1);
        masterVolumeSlider.value = 1;
        waterVolumeSlider.value = 1;
        uiVolumeSlider.value = 1;
        walkVolumeSlider.value = 1;
    }
}
