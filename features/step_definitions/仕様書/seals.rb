# coding: UTF-8

もし /^お薬手帳シールのキャプチャ画像を添付する$/ do
  attach_file :seal_file, 'test/data/1.png'
end
