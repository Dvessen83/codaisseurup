# spec/views/shared/_navbar.html.erb_spec.rb

require 'rails_helper'

describe "shared/_navbar.html.erb" do
  #before { sign_in user }

  it "renders login link" do
    render
    expect(rendered).to have_link("Log In", :href=>"/users/sign_in")
  end

  it "renders signup link" do
    render
    expect(rendered).to have_link "Sign Up"
  end

=begin
  context "without profile" do
    let(:user) { create :user }

    it "renders email" do
      render
      expect(rendered).to have_content user.email
    end
  end

  context "with profile" do
    let(:profile) { build :profile }
    let(:user) { create :user, profile: profile }

    it "renders first and last name" do
      render
      expect(rendered).to have_content profile.first_name
      expect(rendered).to have_content profile.last_name
    end
  end
=end

end
