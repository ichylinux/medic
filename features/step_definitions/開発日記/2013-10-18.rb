# coding: UTF-8

もし /^Unicornの設定ファイルを用意$/ do |string|
  show 'config/unicorn.rb', :as => 'auto'
end

もし /^Capistranoの設定ファイルを用意$/ do |string|
  diff 'Capfile', File.join(File.dirname(__FILE__), 'Capfile.txt'), :as => ['auto', 'edit']
  diff 'config/deploy.rb', File.join(File.dirname(__FILE__), 'deploy.rb.txt'), :as => ['auto', 'edit']
end

もし /^サーバにログインし、以下のコマンドを実行$/ do |string|
end
