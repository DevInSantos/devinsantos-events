require 'spec_helper'

describe Room do
  it { should have_many :talks }
  it { should validate_presence_of :name }
  it { should allow_mass_assignment_of :name }
end
