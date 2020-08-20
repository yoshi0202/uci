require 'WaterServices'
class UtilityCharge::WaterController < ApplicationController
  def index
    render :json => WaterServices.new.create_dto(2000)
  end
end
