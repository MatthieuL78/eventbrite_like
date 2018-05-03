class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    @event = []
    Event.all.each do |event|
      if event.creator_id == session[:_current_user_id] 
        @event << event  
      end
    end

    @event = @event.sort_by { |event| event.datetime }

  end

  def create
  	@user = User.create(name: params[:user][:name])

  	redirect_to root_path
  end
end
