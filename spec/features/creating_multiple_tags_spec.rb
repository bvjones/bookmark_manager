feature 'Adding multiple tags' do
  scenario 'able to add multiple tag to a link' do

    creating_link_with_multiple_tags

    visit '/links'
    link = Link.first
    expect(link.tags.map(&:tag)).to include('social media')
    expect(link.tags.map(&:tag)).to include('friends')
  end
end
