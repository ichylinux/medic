class FamilyMember < ActiveRecord::Base
  belongs_to :member
  belongs_to :family
  attr_accessible :family_id, :member_id, :member_type
end
