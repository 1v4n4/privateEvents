class UsersController < ApplicationController
  def show
    @event = Event.find_by(params[:id])
    @past = current_user.attendeds.past
    @upcoming = current_user.attendeds.upcoming
  end
end
