
feature 'Creating links' do
  scenario 'want to save a web page' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Save link'

    expect(current_path).to eq '/links'

  end
end
