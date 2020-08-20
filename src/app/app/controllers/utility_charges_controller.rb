require 'ChargeServices'
class UtilityChargesController < ApplicationController
  def index
    # 暫定的にアクセスするたびにレコードを作る
    UtilityCharge.new.save
    render :json => ChargeServices.new.create_chargeDTO
  end
end
