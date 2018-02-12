require 'rails_helper'

feature 'Comment Creation' do
  before(:each) do
    sign_up
    new_article
  end

  scenario 'allows a user to visit an article details page' do
    visit(articles_path)
    click_link(I18n.t 'articles.details')

    expect(page).to have_content('First article')
    expect(page).to have_content('Lorem ipsum')
    expect(page).to have_content('Comments')
  end

  scenario 'allows a user to create a new comment' do
    visit(articles_path)
    click_link(I18n.t 'articles.details')

    fill_in(:comment_body, with: 'First comment')
    click_button(I18n.t 'comments.send')

    expect(page).to have_content('First comment')
  end
end
