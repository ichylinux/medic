# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    @seals = Seal.all
  end  

end
