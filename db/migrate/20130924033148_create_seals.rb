class CreateSeals < ActiveRecord::Migration
  def change
    create_table :seals do |t|
      t.string :file, :null => false
      t.string :original_filename, :null => false
      t.string :content_type, :null => false
      t.integer :file_size, :null => false
      t.timestamps
    end
  end
end
