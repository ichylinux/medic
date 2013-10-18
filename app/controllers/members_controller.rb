class MembersController < ApplicationController
  def edit
    @own = current_user.member
    @members = []
    #@own.families.each do |family|
    #  @members.concat family.members
    #end
    #@members.each do |member|
    #  logger.debug member.name
    #end
    
  end
  def update
    @member = current_user.member
    @member.name = params[:member][:name]
    # current_user.memberに反映は？
    @member.save!
    redirect_to root_path
  end
end
