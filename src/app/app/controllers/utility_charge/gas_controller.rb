require 'GasServices'
class UtilityCharge::GasController < ApplicationController
  def index
    render :json => GasServices.new.create_dto(2000)
  end
end
