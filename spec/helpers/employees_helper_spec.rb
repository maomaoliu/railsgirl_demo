require 'spec_helper'

describe EmployeesHelper do
  describe "show_gender" do
    it "should show Unknown" do
      expect(helper.show_gender nil).to eq "Unknown"
    end

    it "should show Male" do
      expect(helper.show_gender false).to eq "Male"
    end

    it "should show Female" do
      expect(helper.show_gender true).to eq "Female"
    end
  end
end
