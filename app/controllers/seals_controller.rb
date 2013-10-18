# coding: UTF-8

class SealsController < ApplicationController

  def new
    @seal = Seal.new
  end

  def create
    @seal = Seal.new(params[:seal])
    @seal.member_id = current_user.member.id
    @seal.save!
    redirect_to root_path
  end

  def download
    @seal = Seal.find(params[:id])
    if @seal.file.present?
      send_file @seal.file.path, :type => @seal.content_type
    else
      render :nothing => true
    end
  end

end
