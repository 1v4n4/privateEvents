class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  
  has_many :attendances, foreign_key: 'attended_id'
  has_many :attendees, through: :attendances, source: :attendee
  
  scope :upcoming, -> { where("Date >= ?", Time.now).order('Date ASC') }
  scope :past, -> { where("Date >= ?", Time.now).order('Date DESC') }
end
