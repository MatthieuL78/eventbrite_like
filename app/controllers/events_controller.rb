class EventsController < ApplicationController
  def index
    @event = Event.all.map { |event| event }
    @event = @event.sort_by { |event| event.datetime }
  end

  def new
  	@event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    p @event
  end

  def create
  	@event = Event.create(description: params[:event][:description], datetime: params[:event][:datetime], place: params[:event][:place])
    @event.creator = current_user
  	@event.save
    redirect_to user_path(current_user)
  end

  def subscribe
    @event = Event.find(params[:id])
    @event.attendees << current_user
    redirect_to events_path
  end

  def invitation
    @event = Event.find(params[:id])
    my_user = User.find(params[:user])
    @event.attendees << my_user
    redirect_to event_path(@event.id)
  end

end
