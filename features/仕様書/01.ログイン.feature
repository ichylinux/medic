# language: ja

機能:

  シナリオ: ログイン
    もし トップページにアクセスする
    ならば ログイン画面に遷移する

    もし Email に user1@example.com と入力する
    かつ Password に testtest と入力する
    かつ Sign in をクリックする
    ならば トップページに遷移する

  シナリオ: アカウント作成
    もし トップページにアクセスする
    ならば ログイン画面に遷移する
    
    もし Sign up をクリックする
    ならば アカウント作成画面に遷移する

    もし Email に test@example.com と入力する
    かつ Password に testtest と入力する
    かつ Password confirmation に testtest と入力する
    かつ Sign up をクリックする
    ならば トップページに遷移する
