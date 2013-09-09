require 'spec_helper'

describe Talk do
  it { should belong_to :speaker }
  it { should belong_to :room }
  it { should validate_presence_of :name }
  it { should validate_presence_of :horary }
end
