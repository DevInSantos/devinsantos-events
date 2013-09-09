require 'spec_helper'

describe Event do
  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
  it { should validate_presence_of :address }
  it { should validate_presence_of :place }
  it { should validate_presence_of :url }
  it { should have_and_belong_to_many :speakers }
  it { should have_many(:rooms).dependent(:destroy) }
  it { should have_many(:sponsors).dependent(:destroy) }
  it "name should be unique" do
    event = events(:devinsantos)
    expect(event).to validate_uniqueness_of(:name)
  end

  describe "scopes" do
    it "should return published" do
      devinsantos = events(:devinsantos)
      next_devinsantos = FactoryGirl.create :next_devinsantos

      events = Event.published

      expect(events).to include devinsantos
      expect(events).to_not include next_devinsantos
    end
  end
end
