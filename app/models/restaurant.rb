class Restaurant < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :openings
end
