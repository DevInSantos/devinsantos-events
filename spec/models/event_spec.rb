require 'spec_helper'

describe Event do
  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
  it { should validate_presence_of :address }
  it { should validate_presence_of :place }

  context "validations" do
    it "name should be unique" do
      event = FactoryGirl.create(:devinsantos)
      expect(event).to validate_uniqueness_of(:name)
    end
  end
end
