# frozen_string_literal: true

require 'pagy/extras/bootstrap'

class JerseysController < ApplicationController
  def index
    @pagy, @jerseys = pagy(Jersey.all)
  end

  def show
    @jersey = Jersey.find(params[:id])
  end
end
