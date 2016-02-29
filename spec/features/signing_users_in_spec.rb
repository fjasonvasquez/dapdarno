require "rails_helper"

RSpec.feature "Users signin" do
	before do
		@you = User.create!(first_name: "You", last_name: "Name", email: "you@example.com", password: "password")
	end

	scenario "with valid credentials" do
		visit "/"
		click_link "Log In"
		fill_in "Email", with: @you.email
		fill_in "Password", with: @you.password
		click_button "Log In"
		expect(page).to have_content("Hey, welcome back!")
		expect(page).to have_content("Signed in as #{@you.email}")
	end
end