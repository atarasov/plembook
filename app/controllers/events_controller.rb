class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 30).order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
end
