# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    @seals = Seal.all(:conditions => ['member_id',current_user.member.id])
  end  

end
