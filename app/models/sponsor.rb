class Sponsor < ActiveRecord::Base
  attr_accessible :logo_url, :name, :sponsorship_type, :event_id

  belongs_to :event

  scope :sponsoring, lambda { |event_id| where(:event_id => event_id) }
end
