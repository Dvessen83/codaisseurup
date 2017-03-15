# spec/features/show_event_spec.rb

require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event}

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts_at.strftime("%a %e %B %Y %H:%M"))
    #expect(page).to have_text(event.ends_at)


  end
end
