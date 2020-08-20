require 'ElectricityServices'
class UtilityCharge::ElectricityController < ApplicationController
  def index
    render :json => ElectricityServices.new.create_dto(2000)
  end
end
