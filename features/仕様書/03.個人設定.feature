# language: ja

機能:

  シナリオ: 家族にメンバーを追加
    前提 user1@example.com がログインしている
    
    もし メニューをクリックする
    ならば メニュー画面に遷移する

    もし 個人設定をクリックする
    ならば 個人設定画面に遷移する
    
    もし 家族追加をクリックする
    かつ 次郎 と入力する
    かつ 更新をクリックする
    ならば トップページに遷移する
    かつ 次郎 を選択できるようになっている
