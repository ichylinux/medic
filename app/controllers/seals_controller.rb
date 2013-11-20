# coding: UTF-8

class SealsController < ApplicationController

  def new
    @seal = Seal.new
    if current_user.member.family_owner?
      @selected_id = params[:member_id]
      @selected_id ||= current_user.member.id
      @members = current_user.member.family.members
      @members = nil unless @members.where('member_id <> ?', current_user.id).present?
    end
  end

  def create
    @seal = Seal.new(params[:seal])
    #@seal.member_id = current_user.member.id
    @seal.save!
    redirect_to root_path
  end

  def download
    @seal = Seal.find(params[:id])
    if params[:thumb]
      send_file @seal.file.thumb.path, :type => @seal.content_type
    else
      send_file @seal.file.path, :type => @seal.content_type
    end
  end

end
