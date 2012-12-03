class Event < ActiveRecord::Base
  attr_accessible :address, :date, :description, :name, :place, :url, :price

  has_and_belongs_to_many :speakers
  has_many :rooms, :dependent => :destroy
  has_many :sponsors, :dependent => :destroy
  has_many :intervals, :dependent => :destroy
  has_many :talks, :through => :speakers

  validates_presence_of :name, :date, :place, :address, :url
  validates_uniqueness_of :name

  default_scope order("created_at desc")

  scope :published, where(Event.arel_table[:published_at].not_eq(nil))

  def self.current
    published.first
  end
end
