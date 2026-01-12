// moku アプリ ディレクトリ構造
// このファイルは参照用（実際のコードではありません）

/*
lib/
├── main.dart                    // アプリのエントリーポイント
├── app.dart                     // MaterialApp / GoRouter 設定
│
├── core/                        // 共通コア機能
│   ├── constants/               // 定数
│   │   ├── app_colors.dart      // カラーパレット
│   │   ├── app_typography.dart  // タイポグラフィ
│   │   └── app_constants.dart   // その他定数
│   │
│   ├── theme/                   // テーマ設定
│   │   └── app_theme.dart       // ThemeData
│   │
│   ├── router/                  // ルーティング
│   │   └── app_router.dart      // GoRouter 設定
│   │
│   ├── utils/                   // ユーティリティ
│   │   └── extensions.dart      // 拡張メソッド
│   │
│   └── widgets/                 // 共通ウィジェット
│       ├── buttons/             // ボタン
│       ├── cards/               // カード
│       ├── inputs/              // 入力フィールド
│       └── animations/          // アニメーション
│
├── features/                    // 機能別モジュール
│   ├── home/                    // ホーム画面
│   │   ├── presentation/        // UI
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── providers/           // 状態管理
│   │
│   ├── lesson/                  // レッスン画面
│   │   ├── data/                // データ層
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── providers/
│   │
│   ├── atelier/                 // アトリエ画面
│   │   ├── presentation/
│   │   └── providers/
│   │
│   ├── profile/                 // マイページ
│   │   ├── presentation/
│   │   └── providers/
│   │
│   └── auth/                    // 認証
│       ├── data/
│       ├── presentation/
│       └── providers/
│
├── shared/                      // 共有エンティティ
│   ├── models/                  // 共有モデル
│   └── providers/               // 共有プロバイダー
│
└── rumi/                        // キャラクター Rumi
    ├── widgets/                 // Rumi ウィジェット
    └── assets/                  // アセット参照
*/
