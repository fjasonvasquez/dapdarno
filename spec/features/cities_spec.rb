require 'rails_helper'

RSpec.feature "Listing available apartments in cities" do 
	scenario "current cities" do
		visit "/"

		click_link "Austin"
		expect(page).to have_content("Austin")
		expect(current_path).to eq("/apartments-for-rent/austin-tx")

		click_link "Chicago"
		expect(page).to have_content("Chicago")
		expect(current_path).to eq("/apartments-for-rent/chicago-il")

		click_link "Los Angeles"
		expect(page).to have_content("Los Angeles")
		expect(current_path).to eq("/apartments-for-rent/los-angeles-ca")

		click_link "Miami"
		expect(page).to have_content("Miami")
		expect(current_path).to eq("/apartments-for-rent/miami-fl")

		click_link "New York City"
		expect(page).to have_content("New York City")
		expect(current_path).to eq("/apartments-for-rent/new-york-ny")

		click_link "San Diego"
		expect(page).to have_content("San Diego")
		expect(current_path).to eq("/apartments-for-rent/san-diego-ca")

		click_link "San Francisco"
		expect(page).to have_content("San Francisco")
		expect(current_path).to eq("/apartments-for-rent/san-francisco-ca")

		click_link "Santa Monica"
		expect(page).to have_content("Santa Monica")
		expect(current_path).to eq("/apartments-for-rent/santa-monica-ca")

		click_link "Washington D.C."
		expect(page).to have_content("Washington D.C.")
		expect(current_path).to eq("/apartments-for-rent/washington-dc")
	end
end