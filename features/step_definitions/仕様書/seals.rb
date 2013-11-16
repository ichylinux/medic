# coding: UTF-8

もし /^お薬手帳シールのキャプチャ画像を添付する$/ do
  @file = "#{Rails.root}/test/data/1.png"
  within 'div#upload_dialog' do
    attach_file :seal_file, @file
  end
  capture
end

ならば /^アップロードダイアログが表示される$/ do
  assert page.has_selector?('div#upload_dialog')
  pause 3
  capture
end

ならば /^お薬手帳シールがアップロードされている$/ do
  assert page.has_selector?("ul.seals")
end
