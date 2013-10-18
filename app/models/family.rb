class Family < ActiveRecord::Base
  has_many :fimily_members, :dependent => :destroy
end
