# coding: UTF-8

もし /^ログアウトのリンクを作成$/ do
  git_diff 'app/views/welcome/index.html.erb'
end
