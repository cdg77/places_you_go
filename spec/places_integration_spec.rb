require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path for places', {:type => :feature}) do
  it('takes a place from the user and displays it on another page') do
    visit('/')
    fill_in('Place Visited', :with=> 'Neverland, Dymension')
    click_button('Add')
    expect(page).to have_content('Your place has been added')
  end
end
