class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def userlogin
    
    if @user = login(user_params[:user_name], user_params[:password])
    # @user = User.find_by_user_name(user_params[:user_name])
    # if login_user(user_params[:user_name], user_params[:password])
    # if @user.present? && User.authenticate(user_params[:user_name], user_params[:password]) 
    # if @user
      # render @user, status: :loggedin
      # format.html { redirect_to @user, notice: 'User was successfully logged in.' }
      # format.json { render "userlogin", status: :loggedin, location: @user }
    else
      render json: {error: "Lol"}, status: 301
      # format.html { render :new }
      # format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
  
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:email, :first_name, :last_name, :user_name, :user_type, :location, :password, :remember_me)
    end
end
