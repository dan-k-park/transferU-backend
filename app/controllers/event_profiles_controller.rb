class EventProfilesController < ApplicationController
  skip_before_action :authorized
  
  def index
    eventProfiles = EventProfile.all
    render :json => eventProfiles
  end

  def show
    eventProfile = EventProfile.find(params[:id])
    render :json => eventProfile
  end

  def new
    eventProfile = EventProfile.new
  end

  def create
    eventProfile = EventProfile.new(eventProfile_params)
    eventProfile.save
    render :json => eventProfile
  end

  def edit
    eventProfile = EventProfile.find(params[:id])
  end

  def update
    eventProfile = EventProfile.find(params[:id])
    eventProfile.update(eventProfile_params)
    render :json => eventProfile
  end

  def destroy
    eventProfile = EventProfile.find(params[:id])
    eventProfile.destroy
  end

  private

  def eventProfile_params
    params.require(:event_profile).permit(:event_id, :profile_id, :attending)
  end
  
end