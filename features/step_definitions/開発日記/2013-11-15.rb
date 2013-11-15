# coding: UTF-8

もし /^メールサーバの接続設定$/ do
  git_diff 'config/environments/development.rb'
end

もし /^パスワードリセットのメール本文を日本語化$/ do |string|
  git_diff 'app/views/devise/mailer/reset_password_instructions.html.erb',
    :and => '62e5535784761970d69ddcdc9cd71b074a013924'
end

もし /^メールの送信者を変更$/ do
  git_diff 'config/initializers/devise.rb', :from => 9, :to => 14
end
