def creating_link_with_tag
  visit '/links/new'

  fill_in 'url',   with: 'http://www.zombo.com/'
  fill_in 'title', with: 'This is Zombocom'
  fill_in 'tag', with: 'zombie'

  click_button 'Save link'
end

def creating_link_with_tag2
  visit '/links/new'

  fill_in 'url',   with: 'http://www.bubblebath.com/'
  fill_in 'title', with: 'bubblebath'
  fill_in 'tag', with: 'bubbles'

  click_button 'Save link'

end
