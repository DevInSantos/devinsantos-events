require 'spec_helper'

describe Room do
  it { should have_many :talks }
  it { should belong_to :event }
  it { should validate_presence_of :name }

  describe "mass assignment" do
    context "allowerd attributes" do
      [:name, :event_id].each do |attribute|
        it { should allow_mass_assignment_of attribute }
      end
    end
  end
end
