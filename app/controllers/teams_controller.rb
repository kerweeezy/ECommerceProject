# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class TeamsController < ApplicationController
  def index
    @pagy, @teams = pagy(Team.all)
  end

  def show
    @team = Team.find(params[:id])
  end
end
