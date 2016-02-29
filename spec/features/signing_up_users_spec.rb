require "rails_helper"

RSpec.feature "Users signup" do
	scenario "with valid credentials" do
		visit "/"

		click_link "Sign up"
		fill_in "First name", with: "Captain"
		fill_in "Last name", with: "America"
		fill_in "Phone Number", with: "(123) 456-7890"
		fill_in "Email", with: "you@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_link "Finish & Sign up"

		expect(page).to have_content("You have signed up successfully.")
		visit "/"
		expect(page).to have_content("Captain America")
	end

	scenario "with invalid credentials" do
		visit "/"

		click_link "Sign up"
		fill_in "First name", with: ""
		fill_in "Last name", with: ""
		fill_in "Phone Number", with: ""
		fill_in "Email", with: "you@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_link "Sign up"

		expect(page).to have_content("First name can't be blank.")
		expect(page).to have_content("Last name can't be blank.")
	end
end