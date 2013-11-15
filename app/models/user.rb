# coding: UTF-8

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_one :member

  after_save :create_family_members
  
  private

  def create_family_members
    if self.member.nil?
      Family.create_family_for(self)
    end
  end

end
