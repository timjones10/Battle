
feature 'Hit Points visible' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Tim: 20 hit points'
  end
end

  feature 'Hit Points visible' do
    scenario 'view player 1 hit points' do
      sign_in_and_play
      expect(page).to have_content 'Lucas: 20 hit points'
    end

  scenario 'player 1 wants to attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Lucas attacked Tim!!'
  end

  feature 'PLayer loses if 0 HPs' do
    scenario 'player 2 loses at 0 points' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      click_button 'Attack'
      click_link 'OK'
      click_button 'Attack'
      click_link 'OK'
      expect(page).to have_content 'Tim loses!!!'
    end
  end

end
