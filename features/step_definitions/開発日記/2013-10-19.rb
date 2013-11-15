# coding: UTF-8

もし /^ログアウトのリンクを作成$/ do
  git_diff 'app/views/common/_menu.html.erb'
  git_diff 'app/assets/javascripts/users.js'
end
