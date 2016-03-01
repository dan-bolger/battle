require 'spec_helper'

feature 'Attacking players' do
  scenario 'attacks and gets confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'Dave attacked Keith'
  end

  scenario 'reducing points' do
    sign_in_and_play
    click_button('attack')
    expect(page).not_to have_content 'Keith: 60HP'
    expect(page).to have_content 'Keith: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'attack'
    click_button 'OK'
    click_button 'attack'
    expect(page).to have_content 'Keith attacked Dave'
  end
end
