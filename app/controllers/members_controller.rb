class MembersController < ApplicationController
  def edit
    @member = current_user.member
    @family_members = []
    if @member.family_member.member_type == "0"
      @family_members = @member.family_members_except_me
    end
    
  end
  def update
    @member = current_user.member
    @member.name = params[:member][:name]
    # current_user.memberに反映は？
    @member.save!
    redirect_to root_path
  end
end
