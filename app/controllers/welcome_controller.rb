# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    condition = SealCondition.new
    condition.current_user_id = current_user.id
    condition.member_id = current_user.member.id
    @seals = Seal.search(condition)

    if current_user.member.family_owner?
      @members = current_user.member.family.members
      @members = nil unless @members.where('member_id <> ?', current_user.id).present?
    end
  end
  
  def get_seals
    condition = SealCondition.new(params)
    condition.current_user_id = current_user.id
    @seals = Seal.search(condition)
    render :partial => 'seals'
  end

end
