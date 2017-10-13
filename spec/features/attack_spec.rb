require 'spec_helper'

feature "Attack" do
  scenario "player 1's attack reduces player 2's hit points" do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Tim: 0 hit points'
    expect(page).to have_content 'Tim: -10 hit points'
  end
end
