require 'rails_helper'

feature 'Contact Creation' do

  scenario 'allows a guest to visit a contacts page' do
    visit(new_contacts_path)

    expect(page).to have_content(I18n.t 'contacts.contact_us')
  end

  scenario 'allows a guest to fill in a contacts form' do
    visit(new_contacts_path)

    fill_in(:contact_email, with: 'mail@mail.com')
    fill_in(:contact_message, with: 'message body')
    click_button('Send message')

    expect(page).to have_content('Thanks!')
  end
end
