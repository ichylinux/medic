# coding: UTF-8

もし /^お薬手帳シールのキャプチャ画像を添付する$/ do
  @file = 'test/data/1.png'
  attach_file :seal_file, @file
end

ならば /^アップロードダイアログが表示される$/ do
  assert page.has_selector?('div#upload_dialog')
  capture
end

ならば /^お薬手帳シールがアップロードされている$/ do
  assert page.has_selector?("ul.seals")
end
