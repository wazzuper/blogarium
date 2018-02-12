def new_article
  visit(new_article_path)

  fill_in(:article_title, with: 'First article')
  fill_in(:article_text, with: 'Lorem ipsum')
  click_button(I18n.t 'articles.new')
end