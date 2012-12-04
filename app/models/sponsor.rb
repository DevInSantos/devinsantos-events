class Sponsor < ActiveRecord::Base
  attr_accessible :logo_url, :name, :sponsorship_type, :event_id

  belongs_to :event

  has_enumeration_for :sponsorship_type, :create_helpers => true

  scope :sponsoring, lambda { |event_id| where(:event_id => event_id) }

  SponsorshipType.list.each do |sponsorship|
    scope sponsorship.to_sym, where(:sponsorship_type => sponsorship)
  end
end
