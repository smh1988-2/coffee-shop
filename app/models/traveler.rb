class Traveler < ActiveRecord::Base
  has_many :trips, dependent: :destroy
  has_many :locations, through: :trips

  def self.unique_travelers_list
    all.distinct.pluck(:name)
  end

  def total_distance
    self.trips.sum(:distance)
  end

  def average_distance
    self.trips.average(:distance)
  end

  def self.average_traveler_distance
    all.sum{|traveler| traveler.average_distance} / all.count
  end

  def self.all_travelers_total_distance
  end
end