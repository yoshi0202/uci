require 'MobilePhoneServices'
class UtilityCharge::MobilePhoneController < ApplicationController
  def index
    render :json => MobilePhoneServices.new.create_dto(2000)
  end
end
