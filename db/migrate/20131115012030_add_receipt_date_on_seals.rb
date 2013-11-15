class AddReceiptDateOnSeals < ActiveRecord::Migration
  def up
    add_column :seals, :receipt_date, :date
  end

  def down
    remove_column :seals, :receipt_date
  end
end
