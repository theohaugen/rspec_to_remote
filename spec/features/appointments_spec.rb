require './spec/spec_helper'
feature "Check appointments page" do

  it 'should load the appointments page' do
    visit '/'
    click_link 'Log in'
    fill_in 'session_email', :with => 'training+provider@breakthrough.com'
    fill_in 'session_password', :with => 'training'
    click_button 'Log in'
    expect(page).to have_content('Training Provider')
    click_link 'Appointments'
    expect(page).to have_content('Upcoming appointments')

  end

  it 'should' do
  end

end
