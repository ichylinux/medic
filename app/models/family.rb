class Family < ActiveRecord::Base
  has_many :family_members, :dependent => :destroy
  accepts_nested_attributes_for :family_members
  
  has_many :members, :through => :family_members

  def self.create_family_for(user)
    member = user.build_member
    member.save!
    
    family = Family.new
    family.family_members << FamilyMember.new(:member => member)
    family.save!
  end
end
