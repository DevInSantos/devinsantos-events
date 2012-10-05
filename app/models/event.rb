class Event < ActiveRecord::Base
  attr_accessible :address, :date, :description, :name, :place

  has_and_belongs_to_many :speakers

  validates_presence_of :name, :date, :place, :address
  validates_uniqueness_of :name
end
