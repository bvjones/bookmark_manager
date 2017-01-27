feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    visit '/'
    fill_in 'email',   with: 'ben@example.com'
    fill_in 'password', with: 'BVJ'
    fill_in 'password_confirmation', with: 'BVJ'

    expect {click_button('Submit') }.to change{User.count}.by(1)

    expect(page).to have_content('Welcome, ben@example.com')
    expect(User.first.email).to eq('ben@example.com')
  end
end
