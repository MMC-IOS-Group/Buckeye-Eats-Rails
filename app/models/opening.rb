class Opening < ActiveRecord::Base
  attr_accessible :closing_time, :day_of_week, :opening_time

  belongs_to :restaurant
end
