require "rails_helper"

RSpec.feature "Searching for Home" do 
	scenario "search home for you" do
		visit "/"

		fill_in "Where will home be for you?", with: "Santa Monica, CA"

		expect(page).to have_content("Searching Santa Monica, CA")
		expect(current_path).to eq("/explore")
	end
end