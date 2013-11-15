# coding: UTF-8

もし /^メールサーバの接続設定$/ do
  git_diff 'config/environments/development.rb'
end
