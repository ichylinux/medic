# coding: UTF-8

もし /^Railsインストール$/ do |string|
  @install_dir = '/tmp/medic_install'
  `rm -Rf #{@install_dir}`
  `mkdir -p #{@install_dir}`
  `cd #{@install_dir} && rails _3.2.14_ new medic -d mysql --skip-bundle`
end

もし /^必要なGemの定義$/ do
  diff 'Gemfile', "#{@install_dir}/medic/Gemfile"
end

もし /^Gemインストール$/ do |string|
  show 'Gemfile.lock', :as => 'auto'
end

もし /^DB接続設定$/ do |string|
  diff 'config/database.yml', "#{@install_dir}/medic/config/database.yml", :as => 'auto'
end

もし /^DB作成$/ do |string|
  show 'db/schema.rb', :as => 'auto'
end

もし /^トップページ作成$/ do |string|
  show 'app/controllers/welcome_controller.rb', :as => 'auto'
  show 'app/views/welcome/index.html.erb', :as => 'new'
  diff 'config/routes.rb', "#{@install_dir}/medic/config/routes.rb"
end

もし /^初回起動$/ do |string|
  assert_visit '/'
end
