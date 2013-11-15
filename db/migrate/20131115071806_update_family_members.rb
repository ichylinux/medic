class UpdateFamilyMembers < ActiveRecord::Migration
  def up
    Member.all.each do |m|
      next if m.family_member.present?
      
      f = Family.new
      f.family_members << FamilyMember.new(:member => m)
      f.save!
    end
  end

  def down
  end
end
