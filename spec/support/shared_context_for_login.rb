shared_context 'login' do
  let(:user) { FactoryGirl.create :user }

  def login_user
    visit new_user_session_path
    fill_in 'Username', :with => user.username
    fill_in 'Password', :with => user.password

    click_button 'Submit'
    #save_and_open_page
  end

  def logout
    click_link 'Logout'
  end
end