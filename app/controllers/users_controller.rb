class UsersController < ApplicationController


  def new

    @users = User.all
    @valid = { valid: 1 }
    @invalid = { valid: 0 }

    respond_to do |format|
      format.html
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
    u = User.new
    u.name = params[:name]
    u.username = params[:username]
    u.country_club = params[:country_club]
    u.birthday = params[:birthday]
    u.email = params[:email]
    u.password = params[:password]
    u.handicap = params[:handicap]
    u.picture = params[:picture]
    u.save

    redirect_to static_pages_signup_url
  end

end

