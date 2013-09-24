# coding: UTF-8

class Seal < ActiveRecord::Base
  mount_uploader :file, SealUploader
end
