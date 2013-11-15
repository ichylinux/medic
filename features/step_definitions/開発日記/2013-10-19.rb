# coding: UTF-8

もし /^ログアウトのリンクを作成$/ do
  git_diff 'app/views/common/_menu.html.erb', :and => '70929cd70e4a7d613d95839ed4abd82c8b66dc04'
end

もし /^AJAXの制御$/ do
  git_diff 'app/assets/javascripts/users.js', :and => '70929cd70e4a7d613d95839ed4abd82c8b66dc04'
end

もし /^検索メソッドを作成$/ do
  git_diff 'app/models/seal.rb', :from => 5, :to => 15
end

もし /^検索$/ do
  git_diff 'app/controllers/welcome_controller.rb',
     :between => 'b15c3d1f142d0f7afda0493a12cd5cd154c89504',
     :and => '1494aedc53cf28b5dca0dc0c4db921d117fbb9ab'
end
