require 'ElectricityServices'
class UtilityCharge::ElectricityController < ApplicationController
  def index
    electricity_services = ElectricityServices.new
    electricity_services.create_supply(1, 2000)
    render :json => ElectricityServices.new.create_dto(2000)
  end
end
