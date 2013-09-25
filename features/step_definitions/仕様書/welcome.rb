# coding: UTF-8

もし /^トップページにアクセスする$/ do
  visit '/'
end

ならば /^トップページに遷移する$/ do
  assert page.has_selector?('div#welcome')
  pause 1
  assert_url '/(\?.*)?$'
end

ならば /^アップロードダイアログが表示される$/ do
  assert page.has_selector?('div#upload_dialog')
  pause 1
  capture
end
