# coding: UTF-8

class SealsController < ApplicationController

  def new
    @seal = Seal.new
  end

  def create
    @seal = Seal.new(params[:seal])
    @seal.save!
    redirect_to root_path
  end

  def download
    @seal = Seal.find(params[:id])
    if @seal.file.present?
      send_file(@seal.file.path)
    else
      render :nothing => true
    end
  end

end
