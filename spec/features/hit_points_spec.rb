require 'spec_helper'

feature 'hit points' do
  scenario 'seeing opposing player points' do
    sign_in_and_play
    expect(page).to have_content 'Keith: 60HP'
  end
end
