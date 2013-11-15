# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    condition = SealCondition.new
    condition.user_id = current_user.id
    @seals = Seal.search(condition)

    @member = current_user.member
    @family_members = []
    if @member.family_member.member_type == "0"
      @family_members = @member.family.members
    end
  end
  
  def get_seals
    condition = SealCondition.new(params)
    @seals = Seal.search(condition)
    render :partial => 'seals'
  end

end
