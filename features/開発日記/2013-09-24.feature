# language: ja

機能:

  シナリオ: お薬手帳シールのアップロード
    Carrierwaveを使用してお薬手帳シール画像をアップロードする。

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
    * アップロードページを作成

  シナリオ: トップページにお薬手帳シールを表示
    * トップページのコンテンツを作成
