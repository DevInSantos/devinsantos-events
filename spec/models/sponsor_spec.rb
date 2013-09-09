require 'spec_helper'

describe Sponsor do
  it { should belong_to :event }

  describe "scopes" do
    it "should return a sponsor an event" do
      event = events(:devinsantos)
      cocento = FactoryGirl.create :sponsor, :event_id => event.id
      caelum = FactoryGirl.create :caelum

      sponsors = Sponsor.sponsoring event.id

      expect(sponsors).to include cocento
      expect(sponsors).to_not include caelum
    end
  end
end
