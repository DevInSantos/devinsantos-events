class Speaker < ActiveRecord::Base
  attr_accessible :company, :description, :name, :email

  has_and_belongs_to_many :events
  has_many :talks

  validates_presence_of :name, :email
  validates_email_format_of :email
end
