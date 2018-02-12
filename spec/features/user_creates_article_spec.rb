require 'rails_helper'

feature 'Article Creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows a user to visit new article page' do
    visit(new_article_path)

    expect(page).to have_content('New article')
  end

  scenario 'allows a user to create an article' do
    visit(new_article_path)

    fill_in(:article_title, with: 'First article')
    fill_in(:article_text, with: 'Lorem ipsum')
    click_button('Create article')

    expect(page).to have_content('First article')
    expect(page).to have_content('Lorem ipsum')
  end
end
