class EventsController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']

  def index
    @events = Event.where("start_date > ?", Date.yesterday).order(:start_date)
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

  def dashboard
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:notice] = "Updates to product made successfully."
      redirect_to events_path
    else
      flash[:error] = @event.errors.full_messages.join(". ")
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :details, :start_date, :location_name, :address, :event_link, :event_times)
  end
end
