class CreateThumbnail < ActiveRecord::Migration
  def up
    Seal.all.each do |s|
      s.file.recreate_versions! if File.exist?(s.file.path)
    end
  end

  def down
  end
end
