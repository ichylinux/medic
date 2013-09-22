# coding: UTF-8

もし /^Gemfileを編集$/ do
  git_diff 'Gemfile'
end

もし /^sudo bunlde update$/ do
  git_diff 'Gemfile.lock', :as => 'auto'
end

もし /^ビューを修正$/ do
  git_diff 'app/views/welcome/index.html.erb'
  git_diff 'app/assets/javascripts/application.js'
  git_diff 'app/assets/stylesheets/application.css'

  sign_in 'user1@example.com'
  visit '/'
  assert_url '/$'
end
