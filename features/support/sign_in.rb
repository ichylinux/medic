# coding: UTF-8

module SignIn

  def sign_in(email)
    visit '/users/sign_in'
    fill_in 'Email', :with => email
    fill_in 'Password', :with => 'testtest'
    click_on 'Sign in'
    assert page.has_selector?('div[data-role="page"] div[data-role="header"]')
  end
  
end

World(SignIn)
