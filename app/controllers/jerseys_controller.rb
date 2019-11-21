# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class JerseysController < ApplicationController
  before_action :initialize_session
  before_action :load_cart

  def index
    @pagy, @jerseys = pagy(Jersey.all)
  end

  def show
    @jersey = Jersey.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @jerseys = Jersey.where('name LIKE ?', "%#{@query}%")
  end

  def add_to_cart
    id = params[:id].to_i

    session[:cart] << id unless session[:cart].include?(id)
    redirect_to jerseys_path
  end

  def remove_from_cart
    id = params[:id].to_i

    session[:cart].delete(id)
    redirect_to jerseys_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Jersey.find(session[:cart])
  end
end
