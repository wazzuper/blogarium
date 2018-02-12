require 'rails_helper'

feature 'Contact Creation' do

  scenario 'allows a guest to visit a contacts page' do
    visit(new_contacts_path)

    expect(page).to have_content(I18n.t 'contacts.contact_us')
  end
end
