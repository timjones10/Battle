# require "./app"

feature "Players" do
  scenario "fill in details" do
    sign_in_and_play
    expect(page).to have_content "Lucas vs. Tim"
  end
end
