
  def sign_in_and_play
    visit ('/')
      fill_in :player1, with: 'Liv'
      fill_in :player2, with: 'Tim'
    click_button 'Submit'
  end
