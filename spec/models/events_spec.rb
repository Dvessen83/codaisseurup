require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it " is invalid wihtout a name" do
      event = Event.new(name: nil)
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "it is invalid with a description longer than 500 characters" do
      event = Event.new(description:"a"*501)
      event.valid?
      expect(event.errors).to have_key(:description)


    end
  end
end
