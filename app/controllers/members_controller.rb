class MembersController < ApplicationController

  def edit
    @member = current_user.member
    if @member.family_member.owner?
      @family_members = @member.family_members_except_me
    end
  end

  def update
    @member = current_user.member
    @member.name = params[:member][:name]
     
    family_members = params[:family_member]
    family = @member.family
    
    if family_members.present?
      family_members.each do |index, family_member|
        member_id = family_member[:id]
        member_name = family_member[:name]
        if member_id.blank?
          next unless member_name.present?

          # 家族の新規追加
          member = Member.new
          member.name = member_name
          family.family_members << FamilyMember.new(:member => member, :member_type => FamilyMember::MEMBER_TYPE_CHILD)
          family.save!
        else
          # 家族の更新
          m = Member.find(member_id)
          m.name = member_name
          m.save!
        end
      end
    end
    
    @member.save!
    redirect_to root_path
  end

  def add_family_member
    @new_member = Member.new
    render :partial => 'family_member_fields', :locals => {:nm => @new_member, :index => params[:index]}
  end
end
