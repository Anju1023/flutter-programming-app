import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';

/// マイページ画面
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ヘッダー
              Text(
                'マイページ',
                style: AppTypography.displayMedium.copyWith(
                  color: AppColors.charcoal,
                ),
              ),

              const SizedBox(height: 32),

              // プロフィールカード
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.foggyBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // アバター
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: AppColors.lavenderGray,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.person_rounded,
                        size: 32,
                        color: AppColors.charcoal,
                      ),
                    ),
                    const SizedBox(width: 16),

                    // ユーザー情報
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ゲストユーザー',
                            style: AppTypography.headlineSmall.copyWith(
                              color: AppColors.charcoal,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'ログインして記録を保存しよう',
                            style: AppTypography.bodySmall.copyWith(
                              color: AppColors.greige,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // 統計
              Row(
                children: [
                  _StatCard(
                    icon: Icons.local_fire_department_rounded,
                    value: '3',
                    label: 'デイズ',
                  ),
                  const SizedBox(width: 12),
                  _StatCard(
                    icon: Icons.water_drop_rounded,
                    value: '42',
                    label: 'ドロップ',
                  ),
                  const SizedBox(width: 12),
                  _StatCard(icon: Icons.eco_rounded, value: '12', label: 'タネ'),
                ],
              ),

              const SizedBox(height: 24),

              // メニューリスト
              Expanded(
                child: ListView(
                  children: const [
                    _MenuItem(icon: Icons.settings_rounded, label: '設定'),
                    _MenuItem(icon: Icons.help_outline_rounded, label: 'ヘルプ'),
                    _MenuItem(
                      icon: Icons.info_outline_rounded,
                      label: 'moku について',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 統計カード
class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.foggyBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Icon(icon, color: AppColors.greige),
            const SizedBox(height: 8),
            Text(
              value,
              style: AppTypography.headlineMedium.copyWith(
                color: AppColors.charcoal,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTypography.labelSmall.copyWith(color: AppColors.greige),
            ),
          ],
        ),
      ),
    );
  }
}

/// メニューアイテム
class _MenuItem extends StatelessWidget {
  const _MenuItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.greige),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.charcoal,
              ),
            ),
          ),
          const Icon(Icons.chevron_right_rounded, color: AppColors.greige),
        ],
      ),
    );
  }
}
