# coding: UTF-8

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_one :member

  #before_save :set_member
  after_save :create_family_members
  
  private

  def create_family_members
    
    if self.member.nil?
      self.member = self.build_member
      self.save!
      
      family = Family.new
      family.family_members << FamilyMember.new
      family.family_members[0].member = self.member
      family.save!
    end
    
  end
  
end
