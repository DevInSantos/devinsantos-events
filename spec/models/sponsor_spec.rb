require 'spec_helper'

describe Sponsor do
  it { should belong_to :event }

  describe "mass assignment" do
    context "allowerd attributes" do
      [:logo_url, :name, :sponsorship_type, :event_id].each do |attribute|
        it { should allow_mass_assignment_of attribute }
      end
    end
  end

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
