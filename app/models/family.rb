class Family < ActiveRecord::Base
  has_many :family_members, :dependent => :destroy
  has_many :members, :through => :family_members
end
