# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class TeamsController < ApplicationController
  def index
    @pagy, @teams = pagy(Team.all, items: 5)

    add_breadcrumb 'home', :root_path
    add_breadcrumb '// teams', :teams_path
  end

  def show
    @team = Team.find(params[:id])

    add_breadcrumb 'home', :root_path
    add_breadcrumb '// teams', :teams_path
    add_breadcrumb ' // ' + @team.name, :team_path
  end

  def search_results
    @query = params[:query]
    @teams = Team.where('name LIKE ?', "%#{@query}%")
  end
end
