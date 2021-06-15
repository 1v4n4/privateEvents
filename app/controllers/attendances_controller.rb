class AttendancesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def show; end

  def create
    @event = Event.find(params[:event_id])
    if Attendance.where(attended_id: @event.id, attendee_id: current_user.id).exists?
      redirect_to root_path, notice: 'You already attending'
      return
    elsif current_user.id == @event.creator_id
      redirect_to root_path, notice: "You can't be an attendee of your own event"
      return
    end
    attendance = Attendance.new(attendee_id: current_user.id, attended_id: @event.id)
    if attendance.save
      redirect_to root_path, notice: 'Welcome!'
    else
      redirect_to root_path, notice: 'Something went wrong'
    end
  end
end
