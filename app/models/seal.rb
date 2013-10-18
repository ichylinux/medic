# coding: UTF-8

class Seal < ActiveRecord::Base
  mount_uploader :file, SealUploader

  def self.search(condition)
    sql = SqlBuilder.new
    sql.append('member_id in (')
    sql.append('  select member_id from members m')
    sql.append('  where m.user_id = ?', condition.current_user_id)
    sql.append(')')

    where(sql.to_a)
  end

end
