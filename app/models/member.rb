class Member < ActiveRecord::Base
  belongs_to :user
  has_one :family_member, :dependent => :destroy
  #has_many :families, :through => :family_members
  has_one :family, :through => :family_member
  
  attr_accessible :name, :user_id
end
