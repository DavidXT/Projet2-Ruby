require 'rails_helper'

RSpec.describe Client, type: :model do
  it "Should save a Client" do
    Client.create(Name: "Test", Email: "Test@Test.test", PhoneNumber: "0606060606", Description: "Test Description")
    expect(Client.count).to be >= 1
  end

  describe "#Name" do
    it "validate presence of name" do
      element = Client.new
      element.Name = ""
      element.validate
      expect(element.errors[:Name]).to include("can't be blank")

      element.Name = "Test"
      element.validate
      expect(element.errors[:Name]).not_to include("can't be blank")
    end
  end

end
