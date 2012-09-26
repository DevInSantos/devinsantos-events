require 'spec_helper'

describe Event do
  it { should validate_presence_of :name }
  it { should validate_presence_of :date }
  it { should validate_presence_of :address }
  it { should validate_presence_of :place }
end
