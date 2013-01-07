# coding: utf-8
class UsersController < ApplicationController
  # GET /skilltags/:skilltag_id/users
  def index
    @skilltag = Skilltag.find params[:skilltag_id]
    raise ActiveRecord::RecordNotFound if @skilltag.nil?

    @users = @skilltag.users.all
  end

  def show
    @user = User.find params[:id]
  end
end
