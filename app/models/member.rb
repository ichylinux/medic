class Member < ActiveRecord::Base
  belongs_to :user
  has_one :family_member, :dependent => :destroy
  has_one :family, :through => :family_member

  def family_owner?
    return false unless family_member
    family_member.owner?
  end
  
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
