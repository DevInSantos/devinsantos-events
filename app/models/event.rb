class Event < ActiveRecord::Base
  attr_accessible :address, :date, :description, :name, :place

  validates_presence_of :name, :date, :place, :address
  validates_uniqueness_of :name
end
