# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class JerseysController < ApplicationController
  before_action :initialize_session
  before_action :load_cart

  def index
    @pagy, @jerseys = pagy(Jersey.all, items: 10)
    @showteams = Team.all

    add_breadcrumb 'home', :root_path
    add_breadcrumb '// jerseys', :jerseys_path
  end

  def show
    @jersey = Jersey.find(params[:id])
    @team = Team.find(@jersey.team_id)

    add_breadcrumb 'home', :root_path
    add_breadcrumb '// teams', :teams_path
    add_breadcrumb '// ' + @team.name, :team_path
    add_breadcrumb '// ' + @jersey.name, :jersey_path
  end

  def search_results
    @query = params[:query]
    @team = params[:team]

    @jerseys = if @team.empty?
                 Jersey.where('name LIKE ?', "%#{@query}%")
               else
                 Jersey.where('name LIKE ? AND team_id LIKE ?',
                              "%#{@query}%", @team.to_s)
               end
  end

  def add_to_cart
    id = params[:id].to_i

    flash[:notice] = 'Jersey successfully added to cart.'

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
