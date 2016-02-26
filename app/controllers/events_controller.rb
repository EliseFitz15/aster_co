class EventsController < ApplicationController
  def index
    @upcoming_events = Event.where("start_date > ?", Date.yesterday)
    @past_events = Event.where("start_date <= ?", Date.yesterday)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event added"
      redirect_to events_path
    else
      flash[:errors] = @event.errors.full_messages.join(". ")
      render :new
    end
  end


  private

  def event_params
    params.require(:event).permit(:title, :details, :start_date, :location_name, :address, :zip_code)
  end
end
