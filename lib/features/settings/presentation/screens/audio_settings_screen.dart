import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/services/audio_service.dart';

/// オーディオ設定画面
class AudioSettingsScreen extends StatefulWidget {
  const AudioSettingsScreen({super.key});

  @override
  State<AudioSettingsScreen> createState() => _AudioSettingsScreenState();
}

class _AudioSettingsScreenState extends State<AudioSettingsScreen> {
  final AudioService _audioService = AudioService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        title: const Text('サウンド設定'),
        backgroundColor: AppColors.offWhite,
        elevation: 0,
        foregroundColor: AppColors.charcoal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BGM セクション
            _buildSectionTitle('BGM', Icons.music_note_rounded),
            const SizedBox(height: 16),
            _buildBgmSettings(),

            const SizedBox(height: 32),

            // 効果音セクション
            _buildSectionTitle('効果音', Icons.volume_up_rounded),
            const SizedBox(height: 16),
            _buildSfxSettings(),

            const SizedBox(height: 32),

            // トラック選択
            _buildSectionTitle('BGM トラック', Icons.library_music_rounded),
            const SizedBox(height: 16),
            _buildTrackSelector(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: AppColors.lavenderGray, size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: AppTypography.headlineSmall.copyWith(
            color: AppColors.charcoal,
          ),
        ),
      ],
    );
  }

  Widget _buildBgmSettings() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // 有効/無効トグル
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BGM を再生',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              Switch(
                value: _audioService.isBgmEnabled,
                onChanged: (value) async {
                  await _audioService.setBgmEnabled(value);
                  setState(() {});
                },
                thumbColor: WidgetStateProperty.all(AppColors.sageGreen),
                trackColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.sageGreen.withValues(alpha: 0.5);
                  }
                  return AppColors.greige.withValues(alpha: 0.3);
                }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // 音量スライダー
          Row(
            children: [
              const Icon(
                Icons.volume_mute_rounded,
                color: AppColors.greige,
                size: 20,
              ),
              Expanded(
                child: Slider(
                  value: _audioService.bgmVolume,
                  onChanged: _audioService.isBgmEnabled
                      ? (value) async {
                          await _audioService.setBgmVolume(value);
                          setState(() {});
                        }
                      : null,
                  activeColor: AppColors.lavenderGray,
                  inactiveColor: AppColors.greige.withValues(alpha: 0.3),
                ),
              ),
              const Icon(
                Icons.volume_up_rounded,
                color: AppColors.greige,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.1);
  }

  Widget _buildSfxSettings() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // 有効/無効トグル
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '効果音を再生',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              Switch(
                value: _audioService.isSfxEnabled,
                onChanged: (value) async {
                  await _audioService.setSfxEnabled(value);
                  setState(() {});
                },
                thumbColor: WidgetStateProperty.all(AppColors.sageGreen),
                trackColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.sageGreen.withValues(alpha: 0.5);
                  }
                  return AppColors.greige.withValues(alpha: 0.3);
                }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // 音量スライダー
          Row(
            children: [
              const Icon(
                Icons.volume_mute_rounded,
                color: AppColors.greige,
                size: 20,
              ),
              Expanded(
                child: Slider(
                  value: _audioService.sfxVolume,
                  onChanged: _audioService.isSfxEnabled
                      ? (value) async {
                          await _audioService.setSfxVolume(value);
                          setState(() {});
                        }
                      : null,
                  activeColor: AppColors.lavenderGray,
                  inactiveColor: AppColors.greige.withValues(alpha: 0.3),
                ),
              ),
              const Icon(
                Icons.volume_up_rounded,
                color: AppColors.greige,
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 12),
          // テスト再生ボタン
          TextButton.icon(
            onPressed: _audioService.isSfxEnabled
                ? () => _audioService.playTap()
                : null,
            icon: const Icon(Icons.play_arrow_rounded, size: 18),
            label: const Text('テスト再生'),
            style: TextButton.styleFrom(foregroundColor: AppColors.greige),
          ),
        ],
      ),
    ).animate().fadeIn(delay: 100.ms).slideY(begin: 0.1);
  }

  Widget _buildTrackSelector() {
    return Column(
      children: BgmTrack.values.map((track) {
        final isSelected = _audioService.currentTrack == track;

        return GestureDetector(
          onTap: () async {
            await _audioService.setTrack(track);
            setState(() {});
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.lavenderGray.withValues(alpha: 0.5)
                  : AppColors.foggyBlue,
              borderRadius: BorderRadius.circular(12),
              border: isSelected
                  ? Border.all(color: AppColors.lavenderGray, width: 2)
                  : null,
            ),
            child: Row(
              children: [
                Icon(
                  track == BgmTrack.none
                      ? Icons.volume_off_rounded
                      : Icons.music_note_rounded,
                  color: isSelected ? AppColors.charcoal : AppColors.greige,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    track.displayName,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.charcoal,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ),
                if (isSelected)
                  const Icon(Icons.check_rounded, color: AppColors.sageGreen),
              ],
            ),
          ),
        );
      }).toList(),
    ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.1);
  }
}
