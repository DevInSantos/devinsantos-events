class Event < ActiveRecord::Base
  has_and_belongs_to_many :speakers, -> { order(:name) }
  has_many :rooms, -> { order(:priority) }, :dependent => :destroy
  has_many :sponsors, :dependent => :destroy
  has_many :intervals, :dependent => :destroy
  has_many :talks, :through => :speakers, :autosave => false

  validates_presence_of :name, :date, :place, :address, :url
  validates_uniqueness_of :name

  default_scope -> { order("created_at desc") }

  scope :published, -> { where(Event.arel_table[:published_at].not_eq(nil)).includes(:intervals, :talks) }

  def self.current
    published.first
  end
end
