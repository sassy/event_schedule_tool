class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    render :show
  end
end
