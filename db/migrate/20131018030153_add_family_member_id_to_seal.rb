class AddFamilyMemberIdToSeal < ActiveRecord::Migration
  def change
    add_column :seals, :family_member_id, :integer
  end
end
