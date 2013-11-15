class UpdateFamilies < ActiveRecord::Migration
  def up
    User.all.each do |u|
      Family.create_family_for(u) unless u.member.present?
    end
  end

  def down
  end
end
