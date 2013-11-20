class MembersController < ApplicationController
  include FamilyMember::FamilyMemberConst
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
     
    family_members = params[:family_member]
    family = @member.family
    
    if family_members != nil
      family_members.each_with_index do |family_member, i|
        member_id = family_member.to_a[1][:id]
        member_name = family_member.to_a[1][:name]
        if member_id.blank?
          # 家族の新規追加
          member = Member.new
          member.name = member_name
          family.family_members << FamilyMember.new(:member => member, :member_type => MEMBER_TYPE_CHILD)
          family.save!
        else
          # 家族の更新
          family.members.each do |m|
            if m.id == member_id.to_i
              m.name = member_name
              m.save!
            end
          end
        end
      end
    end
    
    @member.save!
    redirect_to root_path
  end

  def add_family_member
    @new_member = Member.new
  end
end
