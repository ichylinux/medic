# coding: UTF-8

class Seal < ActiveRecord::Base
  mount_uploader :file, SealUploader

  def self.search(condition)
    sql = SqlBuilder.new
    sql.append('member_id in (')
    sql.append('  select id from members m')
    sql.append('  where m.user_id = ?', condition.user_id)
    sql.append(')')

    where(sql.to_a)
  end

  def receipt_date_string
    if receipt_date
      receipt_date.strftime('%Y-%m-%d')
    else
      created_at.strftime('%Y-%m-%d')
    end
  end

end
