
feature 'Hit Points visible' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Tim: 0 hit points'
  end

  scenario 'player 1 wants to attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Liv attacked Tim!!'
  end
end
