# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    condition = SealCondition.new
    condition.user_id = current_user.id
    @seals = Seal.search(condition)
  end
  
  def get_seals
    condition = SealCondition.new(params)
    @seals = Seal.search(condition)
    render :partial => 'seals'
  end

end
