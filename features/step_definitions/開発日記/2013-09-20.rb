# coding: UTF-8

もし /^Gemfileを編集$/ do
  git_diff 'Gemfile'
end

もし /^sudo bundle update$/ do
  git_diff 'Gemfile.lock', :as => 'auto'
end

もし /^rails g devise:install$/ do
  pre <<-EOS
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
  EOS
end

もし /^rails g devise user$/ do
  pre <<-EOS
$ rails g devise user
      invoke  active_record
      create    db/migrate/20130919140613_devise_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/unit/user_test.rb
      create      test/fixtures/users.yml
      insert    app/models/user.rb
       route  devise_for :users
  EOS

  show 'app/models/user.rb', :as => 'auto'
  git_diff 'config/routes.rb', :as => 'auto'
end

もし /^rake db:migrate$/ do
  git_diff 'db/schema.rb', :as => 'auto'
end

もし /^アプリ全体に認証をかける$/ do
  git_diff 'app/controllers/application_controller.rb'
end

もし /^テストデータを編集$/ do
  generated =<<-EOS
# Read about fixtures at http://api.rubyonrails.org/classes/ActiveRecord/Fixtures.html

# This model initially had no columns defined.  If you add columns to the
# model remove the '{}' from the fixture names and add the columns immediately
# below each fixture, per the syntax in the comments below
#
one: {}
# column: value
#
two: {}
#  column: value
  EOS
  File.write('tmp/users.yml', generated)
  diff 'test/fixtures/users.yml', 'tmp/users.yml'
end

もし /^シナリオ作成$/ do
  show 'features/仕様書/01.ログイン.feature', :as => 'new'
end
