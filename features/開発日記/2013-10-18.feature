# language: ja

機能:

  シナリオ: デプロイ
    * Unicornの設定ファイルを用意
      """
      <b>
      $ rake dad:unicorn:install
      </b>
      """
    * Capistranoの設定ファイルを用意
      """
      <b>
      $ bundle exec capify .
      
      </b>
      """
    * サーバにログインし、以下のコマンドを実行
      """
      <b>
      $ ssh ホスト名
      $ rake dad:unicorn:install RAILS_ENV=production RAILS_ROOT=/home/${USER}/apps/medic/current
      $ cap deploy:setup
      $ cap deploy:cold
      $ rake dad:nginx:app:config RAILS_ENV=production RAILS_ROOT=/home/${USER}/apps/medic/current
      $ sudo /etc/init.d/nginx restart
      </b>
      """
