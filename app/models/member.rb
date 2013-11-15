class Member < ActiveRecord::Base
  belongs_to :user
  has_one :family_member, :dependent => :destroy
  accepts_nested_attributes_for :family_member
  #has_many :families, :through => :family_members
  has_one :family, :through => :family_member
  accepts_nested_attributes_for :family
  
  attr_accessible :name, :user_id
  
  
  def family_members_except_me
    members = []
    self.family.members.each do |member|
      if member.id != self.id
        members.push(member)
      end
    end
    members
  end
end
