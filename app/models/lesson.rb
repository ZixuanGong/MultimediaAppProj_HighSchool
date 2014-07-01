class Lesson < ActiveRecord::Base
  belongs_to :course
  belongs_to :cla

  WEEKDAYS = %w(Monday Tuesday Wednesday Thursday Friday)
  TIME_SLOTS = %w(08:30-10:00 10:30-12:00 13:30-15:00 15:30-17:00)

end
