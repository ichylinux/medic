# coding: UTF-8

class Seal < ActiveRecord::Base
  mount_uploader :file, SealUploader

  def self.search(condition)
    sql = SqlBuilder.new
    sql.append('member_id = ?', condition.member_id)
    sql.append('and exists (')
    sql.append('  select 1 from family_members fm')
    sql.append('  where fm.member_id = (select id from members m where m.user_id = ?)', condition.current_user_id)
    sql.append('    and fm.family_id in (select family_id from family_members fm2 where fm2.member_id = ?)', condition.member_id)
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
