class UserSearchController < ApplicationController
  
  def index
    @users = User.where("email LIKE ?", "%#{params[:search]}%")
    render layout: false
  end
end
