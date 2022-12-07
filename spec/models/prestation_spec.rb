require 'rails_helper'

RSpec.describe Prestation, type: :model do
  it "should create a prestation" do
    Prestation.create(ClientName: "Test", Description: "Test Description")
    expect(Prestation.count).to be >= 1
  end

  describe "#ClientName" do
    it "validate presence of client name" do
      element = Prestation.new
      element.ClientName = ""
      element.validate
      expect(element.errors[:ClientName]).to include("can't be blank")

      element.ClientName = "Test"
      element.validate
      expect(element.errors[:ClientName]).not_to include("can't be blank")
    end
  end

end
