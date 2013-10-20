class AddColumnHospitalNameOnSeals < ActiveRecord::Migration
  def up
    add_column :seals, :hospital_name, :string
  end

  def down
    remove_column :seals, :hospital_name
  end
end
