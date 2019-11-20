# frozen_string_literal: true

class JerseysController < ApplicationController
  def index
    @pagy, @jerseys = pagy(Jersey.all)
  end

  def show; end
end
