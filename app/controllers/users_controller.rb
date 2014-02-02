class UsersController < ApplicationController


  def new

    @user = User.first

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end

  end



  def create
  end

end

