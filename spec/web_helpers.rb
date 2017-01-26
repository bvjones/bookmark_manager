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

def creating_link_with_multiple_tags
  visit '/links/new'

  fill_in 'url',   with: 'http://www.facebook.com/'
  fill_in 'title', with: 'Facebook'
  fill_in 'tag', with: 'social media, friends'

  click_button 'Save link'
end

def sign_up
  visit '/'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'ben@example.com'
  fill_in :password, with: 'BVJ!'
  click_button 'Submit'
end
