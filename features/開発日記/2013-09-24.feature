# language: ja

機能:

  シナリオ: お薬手帳シールのアップロード
    Carrierwaveを使用してカメラで撮影したお薬手帳シールをアップロードする。

    * Gemfile を編集
    * sudo bundle install
    * シールモデルを作成
      """
      <b>
      $ rails g model Seal
      </b>
      """
    * rake db:migrate
    * アップローダーを作成
      """
      <b>
      $ rails g uploader Seal
      </b>
      """
    * アップローダーをモデルにマウント

