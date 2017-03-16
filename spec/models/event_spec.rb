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

    describe "#free?" do

        it "the event is free" do
        free_event = Event.new(price: 0)
        expect(free_event.free?).to eq (true)
      end

      it "the event is not free" do
        event = Event.new(price: 1)
        expect(event.free?).to eq (false)
      end
    end

    describe "order_by_price" do
      let!(:event1) {create :event, price: 400}
      let!(:event2) {create :event, price: 0}
      let!(:event3) {create :event, price: 100}


      it "the events are ordered by price" do
        # event1 = Event.new(price: 400)
        # event2 = Event.new(price: 0)
        # event3 = Event.new(price: 100)


         expect(Event.order_by_price).to eq([event2, event3, event1])
      end
    end

    describe "association with user" do
      #let(:user) {create :user}

      it "belongs to a user" do
        user = User.new()
        event = user.events.new(name: "Koningsdag")

        expect(event.user).to eq(user)
      end
    end


  end
end
