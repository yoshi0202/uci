require 'ChargeServices'
class UtilityChargesController < ApplicationController
  def index
    render :json => ChargeServices.new.create_chargeDTO
  end
end
