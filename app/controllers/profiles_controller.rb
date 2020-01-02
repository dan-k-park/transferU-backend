class ProfilesController < ApplicationController
  skip_before_action :authorized
  
  def index
    profiles = Profile.all
    render :json => profiles
  end

  def show
    profile = Profile.find(params[:id])
    render :json => profile
  end

  def new
    profile = Profile.new
  end

  def create
    profile = Profile.new(profile_params)
    profile.save
    render :json => profile
  end

  def edit
    profile = Profile.find(params[:id])
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(profile_params)
    render :json => profile
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :age, :bio, :avatarURL, :school_id, :user_id)
  end
end
