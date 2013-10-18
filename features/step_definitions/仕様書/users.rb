# coding: UTF-8

前提 /^(.*?) がログインしている$/ do |email|
  sign_in email
end

ならば /^ログイン画面に遷移する$/ do
  assert_url '/users/sign_in'
end

ならば /^アカウント作成画面に遷移する$/ do
  assert page.has_selector?('input[type="submit"][value="Sign up"]')
  pause 3
  assert_url '/users/sign_up'
end
