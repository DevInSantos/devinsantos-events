class Event < ActiveRecord::Base
  attr_accessible :address, :date, :description, :name, :place
end
