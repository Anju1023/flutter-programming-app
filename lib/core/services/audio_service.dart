import 'package:flutter/foundation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// オーディオサービス
/// BGM と効果音の再生を管理
class AudioService {
  AudioService._();

  static final AudioService instance = AudioService._();

  final AudioPlayer _bgmPlayer = AudioPlayer();
  final AudioPlayer _sfxPlayer = AudioPlayer();

  bool _isBgmEnabled = true;
  bool _isSfxEnabled = true;
  double _bgmVolume = 0.3;
  double _sfxVolume = 0.5;
  BgmTrack _currentTrack = BgmTrack.calm;

  /// BGM が有効かどうか
  bool get isBgmEnabled => _isBgmEnabled;

  /// 効果音が有効かどうか
  bool get isSfxEnabled => _isSfxEnabled;

  /// BGM 音量（0.0 - 1.0）
  double get bgmVolume => _bgmVolume;

  /// 効果音音量（0.0 - 1.0）
  double get sfxVolume => _sfxVolume;

  /// 現在の BGM トラック
  BgmTrack get currentTrack => _currentTrack;

  /// 初期化
  Future<void> initialize() async {
    await _loadSettings();

    // BGM プレーヤーの設定
    await _bgmPlayer.setReleaseMode(ReleaseMode.loop);
    await _bgmPlayer.setVolume(_bgmVolume);
  }

  /// 設定をロード
  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();

    _isBgmEnabled = prefs.getBool('audio_bgm_enabled') ?? true;
    _isSfxEnabled = prefs.getBool('audio_sfx_enabled') ?? true;
    _bgmVolume = prefs.getDouble('audio_bgm_volume') ?? 0.3;
    _sfxVolume = prefs.getDouble('audio_sfx_volume') ?? 0.5;

    final trackIndex = prefs.getInt('audio_bgm_track') ?? 0;
    _currentTrack =
        BgmTrack.values[trackIndex.clamp(0, BgmTrack.values.length - 1)];
  }

  /// 設定を保存
  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('audio_bgm_enabled', _isBgmEnabled);
    await prefs.setBool('audio_sfx_enabled', _isSfxEnabled);
    await prefs.setDouble('audio_bgm_volume', _bgmVolume);
    await prefs.setDouble('audio_sfx_volume', _sfxVolume);
    await prefs.setInt('audio_bgm_track', _currentTrack.index);
  }

  // ========== BGM ==========

  /// BGM を再生
  Future<void> playBgm([BgmTrack? track]) async {
    if (!_isBgmEnabled) return;

    track ??= _currentTrack;
    _currentTrack = track;

    try {
      await _bgmPlayer.stop();
      await _bgmPlayer.setVolume(_bgmVolume);
      // TODO: 実際の BGM ファイルを追加後に有効化
      // await _bgmPlayer.play(AssetSource(track.assetPath));
      debugPrint('AudioService: Playing BGM - ${track.name}');
    } catch (e) {
      debugPrint('AudioService: BGM play error - $e');
    }
  }

  /// BGM を停止
  Future<void> stopBgm() async {
    await _bgmPlayer.stop();
  }

  /// BGM を一時停止
  Future<void> pauseBgm() async {
    await _bgmPlayer.pause();
  }

  /// BGM を再開
  Future<void> resumeBgm() async {
    if (!_isBgmEnabled) return;
    await _bgmPlayer.resume();
  }

  /// BGM 有効/無効を切り替え
  Future<void> setBgmEnabled(bool enabled) async {
    _isBgmEnabled = enabled;

    if (enabled) {
      await playBgm();
    } else {
      await stopBgm();
    }

    await _saveSettings();
  }

  /// BGM 音量を設定
  Future<void> setBgmVolume(double volume) async {
    _bgmVolume = volume.clamp(0.0, 1.0);
    await _bgmPlayer.setVolume(_bgmVolume);
    await _saveSettings();
  }

  /// BGM トラックを変更
  Future<void> setTrack(BgmTrack track) async {
    _currentTrack = track;
    await playBgm(track);
    await _saveSettings();
  }

  // ========== 効果音 ==========

  /// 効果音を再生
  Future<void> playSfx(SfxType type) async {
    if (!_isSfxEnabled) return;

    try {
      await _sfxPlayer.setVolume(_sfxVolume);
      // TODO: 実際の効果音ファイルを追加後に有効化
      // await _sfxPlayer.play(AssetSource(type.assetPath));
      debugPrint('AudioService: Playing SFX - ${type.name}');
    } catch (e) {
      debugPrint('AudioService: SFX play error - $e');
    }
  }

  /// 効果音有効/無効を切り替え
  Future<void> setSfxEnabled(bool enabled) async {
    _isSfxEnabled = enabled;
    await _saveSettings();
  }

  /// 効果音音量を設定
  Future<void> setSfxVolume(double volume) async {
    _sfxVolume = volume.clamp(0.0, 1.0);
    await _saveSettings();
  }

  // ========== 便利メソッド ==========

  /// レッスン完了時の効果音
  void playLessonComplete() => playSfx(SfxType.lessonComplete);

  /// クイズ正解時の効果音
  void playQuizCorrect() => playSfx(SfxType.correct);

  /// クイズ不正解時の効果音
  void playQuizIncorrect() => playSfx(SfxType.incorrect);

  /// 実績解除時の効果音
  void playAchievement() => playSfx(SfxType.achievement);

  /// ボタンタップ時の効果音
  void playTap() => playSfx(SfxType.tap);

  /// 破棄
  void dispose() {
    _bgmPlayer.dispose();
    _sfxPlayer.dispose();
  }
}

/// BGM トラック
enum BgmTrack {
  /// 穏やか - 落ち着いたピアノ
  calm('Calm', 'assets/audio/bgm_calm.mp3'),

  /// フォーカス - 集中用アンビエント
  focus('Focus', 'assets/audio/bgm_focus.mp3'),

  /// ロフィ - チルなビート
  lofi('Lo-Fi', 'assets/audio/bgm_lofi.mp3'),

  /// なし
  none('なし', '');

  const BgmTrack(this.displayName, this.assetPath);

  final String displayName;
  final String assetPath;
}

/// 効果音タイプ
enum SfxType {
  /// タップ
  tap('assets/audio/sfx_tap.mp3'),

  /// 正解
  correct('assets/audio/sfx_correct.mp3'),

  /// 不正解
  incorrect('assets/audio/sfx_incorrect.mp3'),

  /// レッスン完了
  lessonComplete('assets/audio/sfx_lesson_complete.mp3'),

  /// 実績解除
  achievement('assets/audio/sfx_achievement.mp3'),

  /// ドロップ獲得
  dropEarn('assets/audio/sfx_drop.mp3');

  const SfxType(this.assetPath);

  final String assetPath;
}
