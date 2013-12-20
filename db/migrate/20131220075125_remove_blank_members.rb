class RemoveBlankMembers < ActiveRecord::Migration
  def up
    Member.delete_all('name is null or name = ""')
  end

  def down
  end
end
