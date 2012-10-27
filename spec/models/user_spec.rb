require 'spec_helper'

describe User do
  describe "mass assignment" do
    context "allowed attributes" do
      [:email, :password, :password_confirmation, :remember_me].each do |attributes|
        it { should allow_mass_assignment_of attributes }
      end
    end
  end
end
