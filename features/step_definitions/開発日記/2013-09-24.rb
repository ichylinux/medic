# coding: UTF-8

もし /^Gemfile を編集$/ do
  git_diff 'Gemfile', :from => 5, :to => 11
end

もし /^sudo bundle install$/ do
  git_diff 'Gemfile.lock', :as => 'auto', :from => 201
end

もし /^シールモデルを作成$/ do |string|
  diff 'db/migrate/20130924033148_create_seals.rb', 'features/step_definitions/開発日記/20130924033148_create_seals.rb.txt', :as => ['auto', 'edit']
end

もし /^rake db:migrate$/ do
  git_diff 'db/schema.rb', :as => 'auto', :from => 14, :to => 26
end

もし /^アップローダーを作成$/ do |string|
  diff 'app/uploaders/seal_uploader.rb', 'features/step_definitions/開発日記/seal_uploader.rb.txt', :as => ['auto', 'edit']
end

もし /^アップローダーをモデルにマウント$/ do
  diff 'app/models/seal.rb', 'features/step_definitions/開発日記/seal.rb.txt'
end

もし /^アップロードページを作成$/ do
  git_diff 'config/application.rb'
  git_diff 'config/routes.rb'
  show 'app/controllers/seals_controller.rb'
  git_diff 'app/controllers/welcome_controller.rb'
  git_diff 'app/views/welcome/index.html.erb'
end
