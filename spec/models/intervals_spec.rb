require 'spec_helper'

describe Interval do
  it { should validate_presence_of :description }
  it { should validate_presence_of :horary }
  it { should belong_to :event }
end
