class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.integer :member_id, :null => false
      t.integer :family_id, :null => false
      t.string :member_type

      t.timestamps
    end
  end
end
