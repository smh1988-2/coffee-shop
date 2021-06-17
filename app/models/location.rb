class Location < ActiveRecord::Base
  has_many :trips, dependent: :destroy
  has_many :travelers, through: :trips
end