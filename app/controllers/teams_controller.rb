# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class TeamsController < ApplicationController
  def index
    @pagy, @teams = pagy(Team.all, items: 5)
  end

  def show
    @team = Team.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @teams = Team.where('name LIKE ?', "%#{@query}%")
  end
end
