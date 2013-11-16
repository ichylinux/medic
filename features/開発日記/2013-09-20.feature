# language: ja

機能: スプリント２

  更新日: 2013-11-16

  シナリオ: ログイン機能
    * Gemfileを編集
    * sudo bundle update
    * rails g devise:install
    * rails g devise user
    * rake db:migrate
    * アプリ全体に認証をかける

  シナリオ: ログインのテスト
    * テストデータを編集
    * シナリオ作成
