# frozen_string_literal: true

class PagesController < ApplicationController
  def contact
    @contact = Page.where('title LIKE ?', 'contact')
  end

  def about
    @about = Page.where('title LIKE ?', 'about')
  end
end
