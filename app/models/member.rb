class Member < ActiveRecord::Base
  belongs_to :user
  has_many :fimily_members, :dependent => :destroy
  has_many :families, :through => :fimily_members
  
  attr_accessible :name, :user_id
end
