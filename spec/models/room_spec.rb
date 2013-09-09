require 'spec_helper'

describe Room do
  it { should have_many :talks }
  it { should belong_to :event }
  it { should validate_presence_of :name }
end
