# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @pagy, @teams = pagy(Team.all)
  end

  def show
    @team = Team.find(params[:id])
  end
end
