require 'spec_helper'

feature 'Attacking players' do
  scenario 'attacks and gets confirmation' do
    sign_in_and_play
    click_link('attack')
    expect(page).to have_content 'Dave attacked Keith'
  end

  scenario 'reducing points' do
    sign_in_and_play
    click_link('attack')
    expect(page).not_to have_content 'Keith: 60HP'
    expect(page).to have_content 'Keith: 50HP'
  end
end
