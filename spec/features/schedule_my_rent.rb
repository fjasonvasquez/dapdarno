require "rails_helper"

RSpec.feature "Schedule my rent" do
	scenario "pay rent with debit or credit card" do
		visit "/"
		
		click_button "Schedule my rent"
		expect(page).to have_content('Pay Rent Online, Easily!')
		expect(current_path).to eq("/paymyrent")
	end
end