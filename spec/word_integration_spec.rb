require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)


describe("picking a word to add a definition to", {:type=> :feature}) do
  it("takes the user to a new page to see the first and add another definition") do
    visit('/')
    fill_in("word", :with => "batman")
    fill_in("word_definition", :with => "wears a mask")
    click_button("Add the word!")
    expect(page).to have_content("batman")
  end
end
