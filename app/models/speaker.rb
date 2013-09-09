class Speaker < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_many :talks, :dependent => :destroy

  validates_presence_of :name, :email
  validates_email_format_of :email

  scope :for_event, lambda { |event_id| joins(:events).
                                        joins(:talks).
                                        where(:events => {:id => event_id}).
                                        includes(:talks => [:room]) }
end
