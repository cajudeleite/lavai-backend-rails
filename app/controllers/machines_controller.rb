class MachinesController < ApplicationController
  def index
    render json: Machine.all
  end
end
