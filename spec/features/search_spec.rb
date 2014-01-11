require './spec/spec_helper'
feature "Signing in to Breakthrough" do

  it 'should let me in with a valid account' do
    visit '/'
    click_link 'Log in'
    fill_in 'session_email', :with => 'training+provider@breakthrough.com'
    fill_in 'session_password', :with => 'training'
    click_button 'Log in'
    expect(page).to have_content("Training Provider")

  end

  it 'should not let me in with an invalid account' do
    visit '/'
    click_link 'Log in'
    click_button 'Log in'
    expect(page).to have_content("Please enter the email and password you used to sign up with Breakthrough.")
  end

end
