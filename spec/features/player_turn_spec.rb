
feature 'Player has a turn' do
  scenario 'Player\'s turn is visible on play page' do
    sign_in_and_play
    expect(page).to have_content "Lucas's turn"
  end

  scenario 'Player\'s turn changes after each attack' do
    sign_in_and_play
    expect(page).not_to have_content "Tim's turn"
    expect(page).to have_content "Lucas's turn"
  end

end
