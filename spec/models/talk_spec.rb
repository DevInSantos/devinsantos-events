require 'spec_helper'

describe Talk do
  it { should belong_to :speaker }
  it { should belong_to :room }
  it { should validate_presence_of :name }
  it { should validate_presence_of :horary }

  describe "mass assignment" do
    context "allowed attributes" do
      [:description, :horary, :link, :name, :speaker_id, :room_id].each do |attribute|
        it { should allow_mass_assignment_of attribute }
      end
    end
  end
end
