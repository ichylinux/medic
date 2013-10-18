# coding: UTF-8

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_one :member
  accepts_nested_attributes_for :member

  before_save :set_member

  private

  def set_member
    self.member ||= self.build_member
  end

end
