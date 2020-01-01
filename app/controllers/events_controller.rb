class EventsController < ApplicationController
  skip_before_action :authorized
  
  def index
    events = Event.all
    render :json => events
  end

  def show
    event = Event.find(params[:id])
    render :json => event
  end

  def new
    event = Event.new
  end

  def create
    event = Event.new(event_params)
    event.save
    render :json => event
  end

  def edit
    event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    render :json => event
  end

  def destroy
    event = event.find(params[:id])
    event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :location, :description, :attendees, :category_id, :school_id)
  end
end
