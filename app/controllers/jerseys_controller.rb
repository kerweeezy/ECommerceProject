class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.all
  end

  def show; end
end
