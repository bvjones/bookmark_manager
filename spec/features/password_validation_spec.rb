feature 'Confirms password on sign-up' do
  scenario 'wont add to database with incorrect password' do

    visit '/'
    fill_in 'email',   with: 'ben@example.com'
    fill_in 'password', with: 'BVJ'
    fill_in 'password_confirmation', with: 'BEN'

    expect {click_button('Submit') }.to change{User.count}.by(0)
  end
end
