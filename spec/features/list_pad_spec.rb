require 'rails_helper'

RSpec.feature "Listing a Pad" do 
	scenario "shows user's workout for last 7 days" do
		visit "/"

		click_link "+List a Pad"
		expect(page).to have_content("I have a pad to rent")
		expect(page).to have_content("I need a roommate")
	end
end