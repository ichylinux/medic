# coding: UTF-8

もし /^トップページにアクセスする$/ do
  visit '/'
end

ならば /^トップページに遷移する$/ do
  assert_url '/(\?.*)?$'
end
