# language: ja

機能:

  シナリオ: アプリの新規作成
    * Railsインストール
      """
      <b>
      $ rails _3.2.14_ new medic -d mysql --skip-bundle
      </b>
      """
    * 必要なGemの定義
    * Gemインストール
      """
      <b>
      $ sudo bundle install
      </b>
      """
    * DB接続設定
      """
      <b>
      $ rake dad:db:config
      </b>
      """
    * DB作成
      """
      <b>
      $ rake dad:db:create
      $ rake db:migrate
      </b>
      """
    * トップページ作成
    * 初回起動
      """
      $ rm public/index.html
      $ rails s
      """
