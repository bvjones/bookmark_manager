feature 'Creating Tags' do
  scenario ' want to create a new tag' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.google.com/'
    fill_in 'title', with: 'Google'
    fill_in 'tag', with: 'search'
    click_button 'Save link'
    
    link = Link.first
    expect(link.tags.map(&:tag)).to include('search')
  end

end
