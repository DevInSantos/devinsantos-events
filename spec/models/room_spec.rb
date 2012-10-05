require 'spec_helper'

describe Room do
  it { should validate_presence_of :name }
end
