class MembersController < ApplicationController
  def edit
    @member = current_user.member
  end
  def update
    @member = current_user.member
    @member.name = params[:member][:name]
    # current_user.memberに反映は？
    @member.save!
    redirect_to root_path
  end
end
