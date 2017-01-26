feature 'Filtering lists ' do
  scenario 'able to search links by tag' do

    creating_link_with_tag
    creating_link_with_tag2

    visit '/tags/bubbles'
    expect(page).to have_content('bubblebath')
    expect(page).not_to have_content('zombie')
  end
end
