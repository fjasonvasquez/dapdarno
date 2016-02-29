require "rails_helper"

RSpec.feature "Home Page" do
	scenario do
		visit "/"
		
		expect(page).to have_link('Find a Pad')
		expect(page).to have_link('Pay My Rent')
	end
end