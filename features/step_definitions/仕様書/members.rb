# coding: UTF-8

ならば /^個人設定画面に遷移する$/ do
  assert page.find('div[data-role="header"] h1').has_text?('個人設定')
  pause 1
  assert_url "/members/#{current_user.id}/edit"
end

もし /^家族追加をクリックする$/ do
  @selector = 'input[type="text"][name^="family_member"][name*="name"]'
  before = all(@selector).count
  click_on '家族追加'
  wait_until do
    all(@selector).count == before + 1
  end
  capture
end

もし /^(.*?) と入力する$/ do |name|
  input = all(@selector).last
  assert_fill_in input['id'], name
end

かつ /^(.*?) を選択できるようになっている$/ do |name|
  assert_select 'member_id', name
end
