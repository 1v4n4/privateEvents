class UsersController < ApplicationController
  def show
    @event = Event.find_by(params[:id])
  end
end
