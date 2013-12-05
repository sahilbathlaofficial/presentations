class Api::UsersController < ApplicationController
  respond_to :json, :xml

  before_action :lets_authorize

  def index
    @users = User.all
    respond_with @users
  end

  def show
    @user = User.first
    respond_with @user
  end

  private

  def lets_authorize
    # respond_with({}) unless (params[:consumer_key] = 'xyz' && params[:consumer_secret] == '123')
  end
end
