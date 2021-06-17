class Trip < ActiveRecord::Base
  belongs_to :traveler
  belongs_to :location
end