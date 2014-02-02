class UsersController < ApplicationController


  def new

    @users = User.all
    @valid = 1
    @invalid = 0

    respond_to do |format|
      format.html
      # format.json { render json: @user }

      format.json do |format|

        new_username = params[:username]

        if User.where(:username => new_username).empty?
          render json: @valid
        else
          render json: @invalid
        end

      end

    end

  end



  def create
  end

end

