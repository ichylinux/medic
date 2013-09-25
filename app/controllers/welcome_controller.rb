# coding: UTF-8

class WelcomeController < ApplicationController

  def index
    @seal = Seal.new
  end

end
