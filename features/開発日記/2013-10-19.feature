# language: ja

機能:

  シナリオ: ログアウト
    http://www.channaly.info/redirect-sign-out-link-in-devise-rails3-with-jquery-mobile/
    に説明があるように、jQuery-mobile では devise のログアウトのリンクがそのままでは
    正常に動作しない。ページのリダイレクトがうまく動作しないからである。
    
    DELETEメソッドのリンクはRailsによって隠しフォームが生成され、実際はそのフォームを
    サブミットしている。フォームには data-ajax="false" の属性がないためリクエストが
    ajax になってしまう。
    
    この隠しフォームに data-ajax="false" を設定することで jQuery-mobile が ajax
    でリクエストを行う制御を無効化する。
    
    * ログアウトのリンクを作成
