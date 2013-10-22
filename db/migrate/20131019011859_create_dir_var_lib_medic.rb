class CreateDirVarLibMedic < ActiveRecord::Migration
  def up
    fail unless system("sudo mkdir -p /var/lib/medic")
    fail unless system("sudo chown -R #{ENV['USER']}:#{ENV['USER']} /var/lib/medic")
  end

  def down
  end
end
