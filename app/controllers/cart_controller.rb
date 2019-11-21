# frozen_string_literal: true

class CartController < ApplicationController
  before_action :initialize_session
  before_action :load_cart

  def index; end

  def remove_from_cart
    id = params[:id].to_i

    session[:cart].delete(id)
    redirect_to cart_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Jersey.find(session[:cart])
  end
end
