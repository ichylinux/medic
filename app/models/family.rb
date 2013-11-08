class Family < ActiveRecord::Base
  has_many :family_members, :dependent => :destroy
  has_many :members, :through => :family_members
  #has_many :members_except_head, :class_name => 'Member', :through => :family_members, :conditions => 'member_type != "0"'
  #accepts_nested_attributes_for :members, :allow_destroy => true
end
