class AddColumnOcrTextOnSeals < ActiveRecord::Migration
  def up
    add_column :seals, :ocr_text, :text
  end

  def down
    remove_column :seals, :ocr_text
  end
end
