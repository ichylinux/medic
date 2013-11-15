# coding: UTF-8

module FamilyMemberConst
  MEMBER_TYPES = {
    MEMBER_TYPE_OWNER = '0' => '世帯主',
    MEMBER_TYPE_CHILD = '1' => '子供'
  }
end

class FamilyMember < ActiveRecord::Base
  include FamilyMemberConst

  belongs_to :member
  belongs_to :family

  def owner?
    member_type == MEMBER_TYPE_OWNER
  end
end
