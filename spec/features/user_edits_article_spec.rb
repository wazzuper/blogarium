require 'rails_helper'

feature 'Edit Article' do
  before(:each) do
    sign_up
    new_article
  end

  scenario 'allows a user to visit an article edits page' do
    visit(articles_path)
    click_link(I18n.t 'articles.edit')

    expect(page).to have_content('Edit your article')
  end

  scenario 'allows a user to edit an article' do
    visit(articles_path)
    click_link(I18n.t 'articles.edit')

    fill_in(:article_title, with: 'First article edited')
    fill_in(:article_text, with: 'Lorem ipsum edited')
    click_button(I18n.t 'articles.update')

    expect(page).to have_content('First article edited')
    expect(page).to have_content('Lorem ipsum edited')
  end
end
