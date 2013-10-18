# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    condition = SealCondition.new
    condition.current_user_id = current_user.id
    @seals = Seal.search(condition)
  end  

end
