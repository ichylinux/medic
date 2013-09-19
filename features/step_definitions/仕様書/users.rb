# coding: UTF-8

ならば /^ログイン画面に遷移する$/ do
  assert_url '/users/sign_in'
end

ならば /^アカウント作成画面に遷移する$/ do
  assert_url '/users/sign_up'
end
