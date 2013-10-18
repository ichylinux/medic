class RenameFamilyMemberIdToSeal < ActiveRecord::Migration
  def up
    rename_column :seals, :family_member_id, :member_id
  end

  def down
    rename_column :seals, :member_id, :family_member_id
  end
end
