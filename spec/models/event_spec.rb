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
    event = FactoryGirl.create(:devinsantos)
    expect(event).to validate_uniqueness_of(:name)
  end
  describe "mass assignment" do
    context "allowed attributes" do
      [:name, :date, :address, :place, :description, :url].each do |attributes|
        it { should allow_mass_assignment_of attributes }
      end
    end
  end
end
