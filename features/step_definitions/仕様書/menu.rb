# coding: UTF-8

ならば /^メニュー画面に遷移する$/ do
  assert page.has_selector?('div#menu')
  pause 1
  capture
end
