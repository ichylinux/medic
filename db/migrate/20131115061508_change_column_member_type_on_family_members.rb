class ChangeColumnMemberTypeOnFamilyMembers < ActiveRecord::Migration
  def up
    change_column :family_members, :member_type, :string, :null => false, :default => '0'
  end

  def down
    change_column :family_members, :member_type, :string, :null => true
  end
end
