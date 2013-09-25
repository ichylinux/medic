# coding: UTF-8

class SealsController < ApplicationController

  def create
    @seal = Seal.new(params[:seal])
    @seal.save!
    redirect_to root_path
  end

end
